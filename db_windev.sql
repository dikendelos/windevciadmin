-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 20 avr. 2022 à 17:52
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_windev`
--

-- --------------------------------------------------------

--
-- Structure de la table `detail_produit`
--

DROP TABLE IF EXISTS `detail_produit`;
CREATE TABLE IF NOT EXISTS `detail_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extrat_titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `prix_euro` varchar(255) NOT NULL,
  `prix_fcfa` varchar(255) NOT NULL,
  `produit_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `detail_produit`
--

INSERT INTO `detail_produit` (`id`, `extrat_titre`, `description`, `reference`, `prix_euro`, `prix_fcfa`, `produit_id`) VALUES
(1, '', 'WINDEV 27 complet', 'WD27', '1650', '1 082 400,00', 1),
(2, '', 'WINDEV 27 complet, \"Echange concurrentiel\"', 'WD27EC', '990', '649 440,00', 1),
(3, '', 'WINDEV 27 complet,+ WEBDEV 27 complet, \"Echange concurrentiel\" *', 'WDB27', '1590', '1 043 040,00', 1),
(4, '', 'WINDEV 27 complet,+ WEBDEV 27 complet,+ WINDEV Mobile 27 complet, \"Echange concurrentiel\" *', 'WDBM27', '1990', '1 305 440,00', 1),
(5, '', 'WINDEV 27 complet, en anglais', 'WD27U', '1650', '1 082 400,00', 1),
(6, '', 'WINDEV 27 complet, en anglais \"Echange concurrentiel\"', 'WD27ECU', '990', '649 440,00', 1),
(7, '', 'WINDEV 27 =7 International complet, en français et anglais \"Echange concurrentiel\" (inclut WDINT : outil de traduction des messages système de WINDEV)', 'WD27ECI', '1099', '720 944,00', 1),
(8, '', 'WEBDEV 27 complet', 'WB27', '1650', '1 082 400,00', 2),
(9, '', 'WEBDEV 27 complet, \"Echange concurrentiel\"', 'WB27EC', '990', '649 440,00', 2),
(10, '', 'WINDEV 27 complet,+ WEBDEV 27 complet, \"Echange concurrentiel\" *', 'WDB27', '1590', '1 043 040,00', 2),
(11, '', 'WINDEV 27 complet,+ WEBDEV 27 complet,+ WINDEV Mobile 27 complet, \"Echange concurrentiel\" *', 'WDBM27', '1990', '1 305 440,00', 2),
(12, '', 'Serveur d\'Application WEBDEV 27 pour Windows **', 'WEBDEPW27', '299', '196 144,00', 2),
(13, '', 'Serveur d\'Application WEBDEV 27 pour Linux **', 'WEBDEPL27', '299', '196 144,00', 2),
(14, '', 'Serveur d\'Application WEBDEV 21 pour Windows **', 'WEBDEPW21', '299', '196 144,00', 2),
(15, '', 'Serveur d\'Application WEBDEV 20 pour Linux **', 'WEBDEPL20', '299', '196 144,00', 2),
(16, '', 'Serveur d\'Application WEBDEV 19 pour Windows **', 'WEBDEPW19', '299', '196 144,00', 2),
(18, '', 'WINDEV Mobile 27 complet', 'WM27', '1650', '1 082 400,00', 3),
(19, '', 'WINDEV Mobile 27 complet, \"Echange concurrentiel\"', 'WM27EC', '990', '649 440,00', 3),
(20, '', 'WINDEV Mobile 27 complet,+ WINDEV 27 complet, \"Echange concurrentiel\" *', 'WDM27', '1590', '1 043 040,00', 3),
(21, '', 'WINDEV Mobile 27 complet,+ WINDEV 27 complet,+ WEBDEV 27 complet, \"Echange concurrentiel\" *', 'WDBM27', '1990', '1 305 440,00', 3),
(30, '', 'Connecteur Natif PROGRESS', 'WDPGS27', '747', '490 032,00', 5),
(31, '', 'WINDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif PROGRESS', 'WD27PGS', '1590', '1 043 040,00', 5),
(32, '', 'WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif PROGRESS', 'WB27PGS', '1590', '1 043 040,00', 5),
(33, '', 'WINDEV 27 complet,\r\n+ WINDEV Mobile 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif PROGRESS', 'WDB27PGS', '2290', '1 502 240,00', 5),
(34, '', 'WINDEV 27 complet,\r\n+ WEBDEV 27 complet,\r\n+ WINDEV Mobile 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif PROGRESS', 'WDBM27PGS', '2690', '1 764 640,00', 5),
(42, '', 'Connecteur Natif DB2', 'WDDB27', '747', '490 032,00', 7),
(43, '', 'WINDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif DB2', 'WD27DB', '1590', '1 043 040,00', 7),
(44, '', 'WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif DB2', 'WB27DB', '1590', '1 043 040,00', 7),
(45, '', 'WINDEV 27 complet,\r\n+WINDEV Mobile 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif DB2', 'WDB27DB', '2290', '	1 502 240,00', 7),
(46, '', 'WINDEV 27 complet,\r\n+WEBDEV 27 complet,\r\n+WINDEV Mobile 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif DB2', 'WDBM27DB', '2690', '1 764 640,00', 7),
(47, '', 'Connecteur Natif SYBASE (ASE)', 'WDSB27', '747', '490 032,00', 8),
(48, '', 'WINDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SYBASE (ASE)', 'WD27SB', '1590', '1 043 040,00', 8),
(49, '', 'WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SYBASE (ASE)', 'WB27SB', '1590', '1 043 040,00', 8),
(50, '', 'WINDEV 27 complet,\r\n+WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SYBASE (ASE)', 'WDB27SB', '2290', '1 502 240,00', 8),
(51, '', 'WINDEV 27 complet,\r\n+WEBDEV 27 complet,\r\n+WINDEV Mobile 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SYBASE (ASE)', 'WDBM27SB', '2690', '1 764 640,00', 8),
(52, '', 'WINDEV 20 complet, \"Echange concurrentiel\" * + accès natif AS/400 Inclut le Kit de développement AS/400 et Accès natif un poste pour tests.', 'WD22AS', '1590', '1 043 040,00', 9),
(53, '', 'WEBDEV 20 complet * + accès natif AS/400 Inclut le Kit de développement AS/400 et Accès natif un poste pour tests.', 'WB22AS', '1590', '1 043 040,00', 9),
(54, '', 'Kit de développement AS/400 (possession de WINDEV *obligatoire)Inclut un Accès natif un poste pour tests', 'WDKAS2', '990', '649 440,00', 9),
(55, '', 'Kit de développement AS/400 (possession de WEBDEV *obligatoire)Inclut un Accès natif un poste pour tests', 'WBKAS22', '990', '649 440,00', 9),
(66, '', 'Mise à jour WINDEV 26 + WEBDEV 26\r\nvers WINDEV 27 + WEBDEV 27 *', 'EDB2627', '1 190', '780 640,00', 13),
(67, '', 'Mise à jour WINDEV 26 + WEBDEV 26\r\nvers WINDEV 27 + WEBDEV 27 *\r\n(commande avant le 15/04/2022)', 'EDB2627P', '949', '621 595', 13),
(151, '', 'Mise à jour WINDEV 26 vers WINDEV 27 *', '\r\nEWD2627', '690', '452 640', 10),
(153, '', 'Mise à jour WINDEV 24 vers WINDEV 26* \r\ncommande avant le 31/05/2020\r\n', 'EWD2426P', '499', '327 344', 0),
(155, '', 'Mise à jour WINDEV 26 vers WINDEV 27 *\r\n(commande avant le 15/04/2022)', 'EWD2627P', '599', '392 345', 10),
(158, '', 'Mise à jour WEBDEV 26 développement\r\nvers WEBDEV 27 développement *\r\n', 'EWB2627', '690', '452 640', 11),
(161, '', 'Mise à jour WEBDEV 26 développement\r\nvers WEBDEV 27 développement *\r\n(commande avant le 15/04/2022)', 'EWB2627P', '599', '392 345', 11),
(163, '', 'Mise à jour WINDEV Mobile 26\r\nvers WINDEV Mobile  27 *', 'EWM2627', '690', '452 640', 12),
(167, '', 'Mise à jour WINDEV Mobile 26\r\nvers WINDEV Mobile 27 *\r\n(commande avant le 15/04/2022)', 'EWM2627P', '599', '392 345', 12),
(173, '', 'Mise à jour Connecteur Natif PROGRESS pour WINDEV 26 vers 27 *', 'EWDPGS2627', '199 ', '130 544', 19),
(174, '', 'Mise à jour Connecteur Natif PROGRESS pour WINDEV 26 vers 27 *\r\n+accès natif PROGRESS', 'EWDPGS2627S', '129 ', '84 624', 19),
(175, '', 'Mise à jour Connecteur Natif PROGRESS pour WINDEV 24 vers 27 **', 'EWDPGS2427', '299  ', '196 144', 19),
(176, '', 'Mise à jour Connecteur Natif PROGRESS pour WINDEV 24 vers 27 **', 'EWDPGS2427S', '229  ', '150 224', 19),
(177, '', 'Mise à jour Connecteur Natif PROGRESS pour WINDEV 23 ou antérieure vers 27 **', 'EWDPGSNN27', '449', '294 544', 19),
(178, '', 'Connecteur Natif à une base ORACLE', 'WDOR27', '747 ', '490 032', 4),
(180, '', 'WINDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif Oracle', 'WD27OR', '1 590 ', '1 043 040', 4),
(182, '', 'WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif Oracle', 'WB27OR', '1 590', '1 043 040', 4),
(183, '', 'Connecteur Natif SQL Server', 'WDSS27', '747', '490.032', 6),
(184, '', 'WINDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SQL Server', 'WD27SS', '1590', '1.043.040', 6),
(185, '', 'WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SQL Server', 'WB27SS', '1590', '1.043.040', 6),
(186, '', 'WINDEV 27 complet,\r\n+WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SQL Server', 'WDB27SS', '2290	\r\n', '1.502.240', 6),
(187, '', 'WINDEV 27 complet,\r\n+WEBDEV 27 complet,\r\n+WINDEV Mobile 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif SQL Server', 'WDBM27SS', '2690', '1.764.640', 6),
(188, '', 'WINDEV 27 complet,\r\n+ WEBDEV 27 complet, \"Échange concurrentiel\" *', 'WDB27', '1 590 \r\n', '1 041 450', 26),
(189, '', 'WINDEV 27 complet,\r\n+ WINDEV Mobile 27 complet, \"Échange concurrentiel\" *', 'WDM27', '1 590 ', '1 041 450', 26),
(190, '', 'WINDEV 27 complet,\r\n+ WEBDEV 27 complet,\r\n+ WINDEV Mobile 27 complet, \"Échange concurrentiel\" *', 'WDBM27', '1990', '1.305.440', 26),
(191, '', 'WINDEV 27 complet, 3 licences', 'WD27EC03', '2599', '1.704.944', 26),
(192, '', 'WINDEV 27 complet, 5 licences', 'WD27EC05', '3 999', '2 619 345', 26),
(193, '', 'WINDEV 27 complet, 10 licences', 'WD27EC10', '6 990', '4.585.440', 26),
(194, '', 'WINDEV 27 complet, 50 licences', 'WD27EC50', '33 900', '22.238.400', 26),
(195, '', 'WINDEV Mobile 27 complet,\r\n+ WINDEV 27 complet, \"Échange concurrentiel\" *', 'WDM27', '1590', '1.043.040', 27),
(196, '', 'WINDEV Mobile 27 complet,\r\n+ WEBDEV 27 complet, \"Échange concurrentiel\" *', 'WBM27', '1 590', '1.043.040', 27),
(197, '', 'WINDEV Mobile 27 complet,\r\n+ WINDEV 27 complet,\r\n+ WEBDEV 27 complet, \"Échange concurrentiel\" *', 'WDBM27', '1 990', '1.305.440', 27),
(198, '', 'WINDEV Mobile 27 complet, 3 licences', 'WM27EC03', '2599', '1.704.944', 27),
(199, '', 'WINDEV Mobile 27 complet, 5 licences', 'WM27EC05', '3 999', '2.623.344', 27),
(200, '', 'WINDEV Mobile 27 complet, 10 licences', 'WM27EC10', '6 990 ', '4.585.440', 27),
(201, '', 'WINDEV Mobile 27 complet, 50 licences', 'WM27EC50', '33 900', '22.238.400', 27),
(202, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n3 licences', 'WDB2703', '4 199 ', '2.754.544', 28),
(203, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n5 licences', 'WDB2705', '6 499', '4.263.344', 28),
(204, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n10 licences', 'WDB2710', '11 990', '7.865.440', 28),
(205, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n50 licences', 'WDB2750', '57 900', '37.982.400', 28),
(210, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n+ WINDEV Mobile 27 complet\r\n3 licences', 'WDBM2703', '5 290', '3.470.240', 30),
(211, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n+ WINDEV Mobile 27 complet\r\n5 licences', 'WDBM2705', '7 990', '5.241.440', 30),
(212, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n+ WINDEV Mobile 27 complet\r\n10 licences', 'WDBM2710', '14 980', '9 811 900', 30),
(213, '', 'WINDEV 27 complet + WEBDEV 27 complet\r\n+ WINDEV Mobile 27 complet\r\n50 licences', 'WDBM2750', '69 900', '45.854.400', 30),
(214, '', 'Mise à jour WEBDEV 24 déploiement \r\nvers WEBDEV 26 déploiement Windows *', 'EWBP2426', '199', '130743', 14),
(216, '', 'Mise à jour WEBDEV 24 déploiement vers WEBDEV 26 déploiement Linux *', 'EWBPL2426', '199', '130743', 14),
(218, '', 'Mise  à jour WEBDEV 24 déploiement vers WEBDEV 26 déploiement Windows **', 'EWBP2426', '249', '163593', 14),
(220, '', 'Mise  à jour WEBDEV 24 déploiement vers WEBDEV 26 déploiement Linux **', 'EWBPL2426', '249', '163593', 14),
(222, '', 'Mise  à jour WEBDEV 24 déploiement ou antérieure vers WEBDEV 26 déploiement Windows **', 'EWBPNN2426', '249', '163593', 14),
(224, '', 'Mise  à jour WEBDEV 24 déploiement ou antérieure vers WEBDEV 26 déploiement Linux **', 'EWBPLNN2426', '249', '163593', 14),
(226, '', 'Mise à jour WINDEV 26 + WINDEV Mobile 26\r\nvers WINDEV 27 + WINDEV Mobile 27 *\r\n', 'EDM2627', '1 190', '780 640', 15),
(230, '', 'Mise à jour WINDEV 26 + WINDEV Mobile 26\r\nvers WINDEV 27 + WINDEV Mobile 27 *\r\n(commande avant le 15/04/2022)\r\n', 'EDM2627P\r\n', '949 ', '621595', 15),
(232, '', 'Mise à jour WINDEV 26 + WEBDEV 26 + WINDEV Mobile 26\r\nvers WINDEV 27 + WEBDEV 27 + WINDEV Mobile 27 *\r\n', 'EDBM2627', '1 399', '917 744', 16),
(236, '', 'Mise à jour WINDEV 26 + WEBDEV 26 + WINDEV Mobile 26\r\nvers WINDEV 27 + WEBDEV 27 + WINDEV Mobile 27 *\r\n(commande avant le 15/04/2022)\r\n', 'EDBM2627P', '1 099', '719 845', 16),
(238, '', 'Mise à jour Connecteur Natif SQL Server pour WINDEV 26 vers 27 *', 'EWDSS2627', '199', '130743', 20),
(240, '', 'Mise à jour Connecteur Natif SQL Server pour WINDEV 26 vers 27 *', 'EWDSS2627S	', '129', '84 624', 20),
(242, '', 'Mise à jour Connecteur Natif SQL Server pour WINDEV 24 vers 27 **', 'EWDSS2427', '299 ', '196 144', 20),
(243, '', 'Mise à jour Connecteur Natif DB2 pour WINDEV 26 vers 27 *', 'EWDDB2627', '199', '130743', 21),
(245, '', 'Mise à jour Connecteur Natif DB2 pour WINDEV 26 vers 27 *', 'EWDDB2627S', '129 ', '84 624', 21),
(247, '', 'Mise à jour Connecteur Natif DB2 pour WINDEV 24 vers 27 **', 'EWDDB2427', '299', '196 144', 21),
(248, '', 'Mise à jour Connecteur Natif Sybase pour WINDEV 26 vers 27 *', 'EWDSB2627', '199', '130743', 22),
(250, '', 'Mise à jour Connecteur Natif Sybase pour WINDEV 26 vers 27 *', 'EWDSB2627S', '129  ', '84 624', 22),
(252, '', 'Mise à jour Connecteur Natif Sybase pour WINDEV 24 vers 27 **', 'EWDSB2427', '299  ', '196 144', 22),
(253, '', 'Mise à jour Connecteur Natif INFORMIX pour WINDEV 26 vers 27 *', 'EWDINF2627', '199', '130743', 23),
(255, '', 'Mise à jour Connecteur Natif INFORMIX pour WINDEV 26 vers 27 *', 'EWDINF2627S', '129', '84 624', 23),
(257, '', 'Mise à jour Connecteur Natif INFORMIX pour WINDEV 24 vers 27 **', 'EWDINF2427', '299', '196 144', 23),
(258, '', 'Mise  à jour WDMSG 24 vers 26 *', 'EWDMSG2426', '299', '196.144', 24),
(262, '', 'Mise à jour WDMSG 24 ou antérieure vers 26 **', 'EWDMSGNN2426', '499', '327.344', 24),
(264, '', 'Mise à jour WINDEV 25 vers WINDEV 27 **', 'EWD2427', '790', '518 240', 10),
(267, '', 'Mise à jour WINDEV Mobile 24\r\nvers WINDEV Mobile 27 **', 'EWM2427', '790 ', '518 240', 12),
(269, '', 'Mise à jour WEBDEV 25 développement\r\nvers WEBDEV 27 développement **', 'EWB2527', '790', '518 240', 11),
(271, '', 'Mise à jour WINDEV 24 + WEBDEV 24\r\nvers WINDEV 26 + WEBDEV 26 *\r\n', 'EDB2426', '1 190', '780 640', 36),
(273, '', 'Mise à jour WINDEV 24 + WEBDEV 24\r\nvers WINDEV 26 + WEBDEV 26 **\r\n', 'EDB2426', '1 490', '977 440', 36),
(275, '', 'Mise à jour WINDEV 24 ou antérieure + WEBDEV 24 ou antérieure\r\nvers WINDEV 26 + WEBDEV 26 **\r\n', 'EDBNN2426', '1 499', '983 344', 36),
(278, '', 'Mise à jour WINDEV 25 + WINDEV Mobile 25\r\nvers WINDEV 27 + WINDEV Mobile 27 **\r\n', 'EDM2527', '1 490 ', '975 950', 15),
(281, '', 'Mise à jour WINDEV 25 + WEBDEV 25 + WINDEV Mobile 25\r\nvers WINDEV 27 + WEBDEV 27 + WINDEV Mobile 27 **\r\n', 'EDBM2527', '1 699', '1 112 845', 16),
(283, '', 'WEBDEV 27 complet, \"Echange concurrentiel\"', 'WB27EC', '990', '649 440,00', 2),
(286, '', 'Mise à jour WINDEV 25 + WINDEV Mobile 25\r\nvers WINDEV 27 + WINDEV Mobile 27 **\r\n(commande avant le 15/04/2022)\r\n', 'EDM2527P', '1 399', '916 345', 15),
(287, '', '', '', '', '', 0),
(288, '', 'Mise à jour WINDEV Mobile 25\r\nvers WINDEV Mobile 27 **\r\n(commande avant le 15/04/2022)', 'EWM2527P', '770', '504 350', 10),
(289, '', 'Mise à jour WINDEV Mobile 24 ou antérieure\r\nvers WINDEV Mobile 27 **', 'EWMNN27', '890', '583 840', 10),
(290, '', 'Mise à jour WINDEV Mobile 24 ou antérieure\r\nvers WINDEV Mobile 27 **\r\n(commande avant le 15/04/2022)', 'EWMNN27P', '870', '569 850', 10),
(291, '', 'Mise à jour WEBDEV 25 développement\r\nvers WEBDEV 27 développement **\r\n(commande avant le 15/04/2022)', 'EWB2527P', '770', '504 350', 11),
(292, '', 'Mise à jour WEBDEV 24 développement ou antérieure\r\nvers WEBDEV 27 développement **', 'EWBNN27', '890', '583 840', 11),
(293, '', 'Mise à jour WEBDEV 24 développement ou antérieure\r\nvers WEBDEV 27 développement **\r\n(commande avant le 15/04/2022)', 'EWBNN27P', '870', '569 850', 11),
(294, '', 'Mise à jour WINDEV Mobile 24\r\nvers WINDEV Mobile 27 **', 'EWM2427P', '750 ', '492 000', 12),
(295, '', 'Mise à jour WINDEV Mobile 23 ou antérieure\r\nvers WINDEV Mobile 27 **', 'EWMNN27', '890 ', '583 840', 12),
(296, '', 'Mise à jour WINDEV Mobile 23 ou antérieure\r\nvers WINDEV Mobile 27 **', 'EWMNN27P', '850 ', '557 600', 12),
(297, '', 'WINDEV Mobile 27 complet,\r\n+ WINDEV 27 complet,\r\n+ WEBDEV 27 complet, \"Echange concurrentiel\" *', 'WDBM27', '1 990', '1 305 440', 3),
(298, '', 'Serveur d\'Application WEBDEV 23 pour Linux **', 'WEBDEPL23', '299', '196 144', 2),
(299, '', 'Serveur d\'Application WEBDEV 22 pour Windows **', 'WEBDEPW22', '299', '196 144', 2),
(300, '', 'Serveur d\'Application WEBDEV 22 pour Linux **', 'WEBDEPL22', '299', '196 144', 2),
(301, '', 'Serveur d\'Application WEBDEV 21 pour Windows **', 'WEBDEPW21', '299', '196 144', 2),
(302, '', 'Serveur d\'Application WEBDEV 21 pour Linux **', 'WEBDEPL21', '299', '196 144', 2),
(303, '', 'Serveur d\'Application WEBDEV 20 pour Windows **', 'WEBDEPW20', '299', '196 144', 2),
(304, '', 'Serveur d\'Application WEBDEV 20 pour Linux **', 'WEBDEPL20', '299', '196 144', 2),
(305, '', 'Serveur d\'Application WEBDEV 19 pour Windows **', 'WEBDEPW19', '299', '196 144', 2),
(306, '', 'Serveur d\'Application WEBDEV 19 pour Linux **', 'WEBDEPL19', '299', '196 144', 2),
(307, '', 'Serveur d\'Application WEBDEV 18 pour Windows **', 'WEBDEPW18', '299', '196 144', 2),
(308, '', 'Serveur d\'Application WEBDEV 18 pour Linux **', 'WEBDEPL18', '299 ', '196 144', 2),
(309, '', 'WEBDEV 27 complet,\r\n+ WINDEV 27 complet, \"Échange concurrentiel\" *', 'WDB27', '1 590', '1 043 040', 37),
(310, '', 'WEBDEV 27 complet,\r\n+ WINDEV Mobile 27 complet, \"Échange concurrentiel\" *', 'WBM27', '1 590', '1 043 040', 37),
(311, '', 'WEBDEV 27 complet,\r\n+ WINDEV 27 complet,\r\n+ WINDEV Mobile 27 complet, \"Échange concurrentiel\" *', 'WDBM27', '1 990', '1 305 440', 37),
(312, '', 'WEBDEV 27 complet, 3 licences', 'WB27EC03', '2 599', '1 704 944', 37),
(313, '', 'WEBDEV 27 complet, 5 licences', 'WB27EC05', '3 999', '2623344', 37),
(314, '', 'WEBDEV 27 complet, 10 licences', 'WB27EC10', '6 990 ', '4 585 440', 37),
(315, '', 'WEBDEV 27 complet, 50 licences', 'WB27EC50', '33 900', '22238400', 37),
(317, '', 'Mise à jour Connecteur Natif SQL Server pour WINDEV 24 vers 27 **', 'EWDSS2427S', '229', '150 224', 20),
(318, '', 'Mise à jour Connecteur Natif SQL Server pour WINDEV 23 ou antérieure vers 27 **', 'EWDSSNN27', '449', '294 544', 20),
(319, '', 'Mise à jour Connecteur Natif DB2 pour WINDEV 24 vers 27 **', 'EWDDB2427S', '229 ', '150 224', 21),
(320, '', 'Mise à jour Connecteur Natif DB2 pour WINDEV 23 ou antérieure vers 27 **', 'EWDDBNN27', '449 ', '294 544', 21),
(321, '', 'Mise à jour Connecteur Natif Sybase pour WINDEV 24 vers 27 **', 'EWDSB2427S', '229 ', '150 224', 22),
(322, '', 'Mise à jour Connecteur Natif Sybase pour WINDEV 23 ou antérieure vers 27 **', 'EWDSBNN27', '449', '294 544', 22),
(323, '', 'Mise à jour Connecteur Natif INFORMIX pour WINDEV 24 vers 27 **', 'EWDINF2427S', '229  ', '150 224', 23),
(324, '', 'Mise à jour Connecteur Natif INFORMIX pour WINDEV 23 ou antérieure vers 27 **', 'EWDINFNN27', '449  ', '294 544', 23),
(325, '', 'WINDEV 27 complet,\r\n+WEBDEV 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif Oracle', 'WDB27OR', '2 290 ', '1 502 240', 4),
(326, '', 'WINDEV 27 complet,\r\n+WEBDEV 27 complet,\r\n+WINDEV Mobile 27 complet, \"Echange concurrentiel\"\r\n+Connecteur Natif Oracle', 'WDBM27OR', '2 690 ', '1 502 240', 4),
(327, '', 'Mise à jour WINDEV 25 + WEBDEV 25\r\nvers WINDEV 27 + WEBDEV 27 **', 'EDB2527', '1 490', '975 950', 13),
(328, '', 'Mise à jour WINDEV 25 + WEBDEV 25\r\nvers WINDEV 27 + WEBDEV 27 **\r\n(commande avant le 15/04/2022)', 'EDB2527P', '1 399', '916 345', 13),
(329, '', 'Mise à jour WINDEV 24 ou antérieure + WEBDEV 24 ou antérieure\r\nvers WINDEV 27 + WEBDEV 27 **', 'EDBNN27', '1 499 ', '981 845', 13),
(330, '', 'Mise à jour WINDEV 24 ou antérieure + WEBDEV 24 ou antérieure\r\nvers WINDEV 27 + WEBDEV 27 **\r\n(commande avant le 15/04/2022)', 'EDBNN27P', '1 449 ', '981 845', 13),
(331, '', 'Mise à jour WINDEV 24 ou antérieure + WINDEV Mobile 24 ou antérieure\r\nvers WINDEV 27 + WINDEV Mobile 27 **', 'EDMNN27', '1 499 ', '981 845', 15),
(332, '', 'Mise à jour WINDEV 24 ou antérieure + WINDEV Mobile 24 ou antérieure\r\nvers WINDEV 27 + WINDEV Mobile 27 **\r\n(commande avant le 15/04/2022)', 'EDMNN27P', '1 449 ', '981 845', 15),
(333, '', 'Mise à jour WINDEV 24 ou antérieure + WEBDEV 24 ou antérieure + WINDEV Mobile 24 ou antérieure\r\nvers WINDEV 27 + WEBDEV 27 + WINDEV Mobile 27 **', 'EDBMNN27', '1 749', '1 145 595', 16),
(334, '', 'Mise à jour WINDEV 24 ou antérieure + WEBDEV 24 ou antérieure + WINDEV Mobile 24 ou antérieure\r\nvers WINDEV 27 + WEBDEV 27 + WINDEV Mobile 27 **\r\n(commande avant le 15/04/2022)', 'EDBMNN27P', '1 649', '1 080 095', 16),
(340, '', 'Mise à jour WDMSG 26 vers 27 *', 'EWDMSG2627', '299', '195 845', 24),
(341, '', 'Mise à jour WDMSG 26 vers 27 *\r\n(commande avant le 15/04/2022)', 'EWDMSG2627P', '239 ', '156 545', 24),
(342, '', 'Mise à jour WDMSG 25 vers 27 **', 'EWDMSG2527', '349 ', '228 595', 24),
(343, '', 'Mise à jour WDMSG 25 vers 27 **\r\n(commande avant le 15/04/2022)', 'EWDMSG2527P', '299 ', '195 845', 24),
(344, '', 'Mise à jour WDMSG 24 ou antérieure vers 27 **', 'EWDMSGNN27', '499 ', '326 845', 24),
(346, '', 'WINDEV 27 complet + WINDEV Mobile 27 complet\r\n3 licences', 'WDM2703', '4 199', '2750345', 29),
(347, '', 'WINDEV 27 complet + WINDEV Mobile 27 complet\r\n5 licences', 'WDM2705', '6 499', '4 256 845', 29),
(348, '', 'WINDEV 27 complet + WINDEV Mobile 27 complet\r\n10 licences', 'WDM2710', '11 990 	\r\n', '7 853 450', 29),
(353, '', 'WINDEV 27 complet + WINDEV Mobile 27 complet\r\n50 licences', 'WDM2750', '57 900', '37 924 500', 29);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tire` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `tire`, `date`) VALUES
(1, 'Test', '12-04-2022'),
(2, 'Test 1', '12-04-2022');

-- --------------------------------------------------------

--
-- Structure de la table `lience`
--

DROP TABLE IF EXISTS `lience`;
CREATE TABLE IF NOT EXISTS `lience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lience`
--

INSERT INTO `lience` (`id`, `libelle`, `description`) VALUES
(1, 'Licences simples', 'Licences simples'),
(2, 'Mise à jour', 'Mise à jour'),
(3, 'Licences multiples', 'Licences multiples');

-- --------------------------------------------------------

--
-- Structure de la table `lst`
--

DROP TABLE IF EXISTS `lst`;
CREATE TABLE IF NOT EXISTS `lst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `lien` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lst`
--

INSERT INTO `lst` (`id`, `titre`, `contenu`, `lien`, `date`) VALUES
(1, 'Titre 1', 'Contenu 1', 'Lien', '2022-04-12 15:50:55'),
(3, 'Titre 1', 'Contenu 1', 'Lien', '2022-04-12 15:51:37');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extrat_titre` varchar(255) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `licence_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `extrat_titre`, `nom_produit`, `description`, `licence_id`) VALUES
(1, '', 'WINDEV', 'WINDEV', 1),
(2, '', 'WEBDEV', 'WEBDEV', 1),
(3, '', 'WINDEV MOBILE', 'WINDEV MOBILE', 1),
(4, '', 'Accès Natif: ORACLE', 'Accès Natif: ORACLE', 1),
(5, '', 'Accès Natif: PROGRESS', 'Accès Natif: PROGRESS', 1),
(6, '', 'Accès Natif: SQL Server', 'Accès Natif: SQL Server', 1),
(7, '', 'Accès Natif: DB2', 'Accès Natif: DB2', 1),
(8, '', 'Accès Natif: SYBASE', 'Accès Natif: SYBASE', 1),
(9, '', 'Accès Natif WD-WB AS400', 'Accès Natif WD-WB AS400', 1),
(10, 'Profitez de cette mise à jour pour acquérir un logiciel complémentaire à tarif préférentiel !', 'WINDEV ', 'WINDEV ', 2),
(11, 'Profitez de cette mise à jour pour acquérir un logiciel complémentaire à tarif préférentiel !', 'WEBDEV', 'WEBDEV', 2),
(12, 'Profitez de cette mise à jour pour acquérir un logiciel complémentaire à tarif préférentiel !', 'WINDEV Mobile', 'WINDEV Mobile', 2),
(13, '', 'WINDEV + WEBDEV', 'WINDEV + WEBDEV', 2),
(14, '', 'WEBDEV déploiement', 'WEBDEV déploiemennt', 2),
(15, '', 'WINDEV + WINDEV Mobile', 'WINDEV + WINDEV Mobile', 2),
(16, '', 'WINDEV+WEBDEV+WINDEV Mobile', 'WINDEV+WEBDEV+WINDEV Mobile', 2),
(17, '', 'WEBDEV AS400', 'WEBDEV AS400', 2),
(18, '', 'WINDEV AS400', 'WINDEV AS400', 2),
(19, '', 'Accès Natif: PROGRESS', 'Accès Natif: PROGRESS', 2),
(20, '', 'Accès Natif: SQL Server', 'Accès Natif: SQL Server', 2),
(21, '', 'Accès Natif: DB2', 'Accès Natif: DB2', 2),
(22, '', 'Accès Natif: SYBASE', 'Accès Natif: SYBASE', 2),
(23, '', 'Accès Natif: INFORMIX', 'Accès Natif: INFORMIX', 2),
(24, '', 'WDMSG', 'WDMSG', 2),
(25, '', 'WDETAT', 'WDETAT', 2),
(26, '', 'WINDEV', 'WINDEV', 3),
(27, '', 'WINDEV Mobile', 'WINDEV Mobile', 3),
(28, '', 'WINDEV + WEBDEV', 'WINDEV + WEBDEV', 3),
(29, '', 'WINDEV + WINDEV Mobile', 'WINDEV + WINDEV Mobile', 3),
(30, '', 'WINDEV + WEBDEV + WINDEV Mobile', 'WINDEV + WEBDEV + WINDEV Mobile', 3),
(31, '', 'WEBDEV AS400', 'WEBDEV AS400', 3),
(32, '', 'WINDEV AS400', 'WINDEV AS400', 3),
(33, '', 'WDETAT', 'WDETAT', 3),
(34, '', 'LST : Magazine du Support Technique', 'LST : Magazine du Support Technique', 3),
(35, '', 'WINDEV AS400', 'WINDEV AS400', 3),
(36, '', 'WINDEV + WEBDEV', 'WINDEV + WEBDEV', 2),
(37, '', 'WEBDEV ', 'WEBDEV ', 3),
(38, 'test X', 'test X', 'test X', 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `role`) VALUES
(1, 'admin', '$2b$10$GEi4a1ZGtHvDTdQnHgSgqevohnDdY8qFV6gYUam0T2pLx9xcX3Vr.', 'admin'),
(2, 'dikens', '$2b$10$5lCVVbVn/bcBbzK.kMdpSe0UvnsFv/47hbvXRF5So4RabhlP6Z5nG', 'user'),
(5, 'test', '$2b$10$D6zqvR.RF7ao7VW2NRfl7u70HnKusOAGQSxTWOZoSW0zQNiNqY/IC', 'user'),
(6, 'admin2', '$2b$10$JttBjFvyIsxYieMkQRD/ceHmJv8Q.wJbDtG/FcmhhNWKCSWaxrhCy', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
