-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 11. Aug 2023 um 17:23
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `BE19_CR6_bigEventsLenaMares`
--
CREATE DATABASE IF NOT EXISTS `BE19_CR6_bigEventsLenaMares` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `BE19_CR6_bigEventsLenaMares`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811075557', '2023-08-11 09:56:43', 37);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date_time`, `description`, `image`, `capacity`, `email`, `phone_number`, `address`, `url`, `type`) VALUES
(1, 'Club Couleur', '2023-09-21 19:30:00', 'Burlesque, chanson, comedy, lipsync and dance meet - framed by the multifaceted art of drag.\r\nAn evening completely in the sense of all colors: COLORFUL!\r\n', 'https://vindobona.wien/assets/images/Events/_1960x1020_crop_center-center_85_none/flyer_clubcouleur_1_edited_2020-12-27-163613.jpg', 150, 'office@vindobona.wien', '+43 1 512 39 03', 'Das Vindobona\r\nWallensteinplatz 6\r\n1200 Wien', 'https://vindobona.wien/events/club-couleur-1-1-2-2-4-4-3-3-2', 'LGBT'),
(2, 'Vienna Night Run 2023', '2023-09-19 20:15:00', '5 km, one lap around the Vienna Ringstrasse boulevard at night', 'https://www.vienna.at/2022/09/2_Oper-2-1.jpg.pagespeed.ce_.a3cqv0lY7Q.jpg', 14000, 'office@sportmedia.at', '01 234 245', 'Universitätsring, on the level of the Vienna University, main building', 'www.viennanightrun.at', 'sport'),
(3, 'Alex Kristan - 50 Shades of Schmäh', '2023-09-20 19:30:00', 'Alex Kristan has turned 50, or as the optimist in him says: \"The first third of his life is over. And because the thirst for action is still greater than the nightly urge to urinate, he is taking this \"round\" as an opportunity to present himself with a new solo programme.', 'https://mobil.news.at/_storage/asset/12559388/storage/newsat:key-visual/file/182710384/alex-kristan.jpg', 200, 'wien-ticket@mail.at', '+43 1 58885', 'Globe Wien - Marx Halle\r\nKarl-Farkas-Gasse 19\r\n1030 Wien', 'www.wien-ticket.at', 'cabaret'),
(4, 'Anatevka', '2023-09-02 19:00:00', 'Musical by Jerry Bock', 'https://www.volksoper.at/FrontendImageStore/2000/auto/prop/volksoper_wien/repertoire/2023_02_22_GP_WA_anatevka_BP_(588)_RET.jpg', 500, 'tickets@volksoper.at', '+43 1 51444-3670', 'Vienna Volksoper\r\nWähringer Straße 78\r\n1090 Wien', 'www.volksoper.at/tickets', 'musical');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
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

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
