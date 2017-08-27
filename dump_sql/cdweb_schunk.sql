-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 27. Aug 2017 um 19:55
-- Server-Version: 10.1.10-MariaDB
-- PHP-Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cdweb_schunk`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alben`
--

CREATE TABLE `alben` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `gerne` varchar(255) NOT NULL,
  `rating` int(5) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `ownerId` int(11) NOT NULL,
  `lentId` int(11) NOT NULL,
  `interpretId` int(11) NOT NULL,
  `mediumId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `alben`
--

INSERT INTO `alben` (`id`, `name`, `cover`, `gerne`, `rating`, `year`, `notice`, `ownerId`, `lentId`, `interpretId`, `mediumId`) VALUES
(1, 'The Stage', 'img/cover/thestage.jpg', 'Metal', NULL, '2016', NULL, 1, 0, 1, 1),
(2, 'The Scene', 'img/cover/thescene.jpg', 'Metal Core', NULL, '2017', NULL, 1, 0, 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `interpret`
--

CREATE TABLE `interpret` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `interpret`
--

INSERT INTO `interpret` (`id`, `name`) VALUES
(1, 'Avenged Sevenfold'),
(2, 'Eskimo Callboy');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `medium`
--

CREATE TABLE `medium` (
  `id` int(11) NOT NULL,
  `name` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `medium`
--

INSERT INTO `medium` (`id`, `name`) VALUES
(1, 'CD'),
(2, 'LP');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `titel`
--

CREATE TABLE `titel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `length` varchar(5) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `albenId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `titel`
--

INSERT INTO `titel` (`id`, `name`, `number`, `length`, `source`, `albenId`) VALUES
(1, 'The Stage', 1, '8:32', '', 1),
(2, 'Paradigm', 2, '4:18', '', 1),
(3, 'Sunny Disposition', 3, '6:41', '', 1),
(4, 'God Damn', 4, '3:41', '', 1),
(5, 'Creating God', 5, '5:34', '', 1),
(6, 'Angels', 6, '5:40', '', 1),
(7, 'Simulation', 7, '5:30', '', 1),
(8, 'Higher', 8, '6:28', '', 1),
(9, 'Roman Sky', 9, '5:00', '', 1),
(10, 'Fermi Paradox', 10, '6:30', '', 1),
(11, 'Exist', 11, '15:41', '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `passwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `name`, `passwd`) VALUES
(1, 'niklas', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `alben`
--
ALTER TABLE `alben`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `interpret`
--
ALTER TABLE `interpret`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `medium`
--
ALTER TABLE `medium`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `titel`
--
ALTER TABLE `titel`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `alben`
--
ALTER TABLE `alben`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `interpret`
--
ALTER TABLE `interpret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `medium`
--
ALTER TABLE `medium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `titel`
--
ALTER TABLE `titel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
