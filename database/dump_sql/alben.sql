-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 29. Aug 2017 um 21:36
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
  `genre` varchar(255) NOT NULL,
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

INSERT INTO `alben` (`id`, `name`, `cover`, `genre`, `rating`, `year`, `notice`, `ownerId`, `lentId`, `interpretId`, `mediumId`) VALUES
(1, 'The Stage', 'img/cover/thestage.jpg', 'Metal', NULL, '2016', NULL, 1, 0, 1, 1),
(2, 'The Scene', 'img/cover/thescene.jpg', 'Metal Core', NULL, '2017', NULL, 1, 1, 2, 2);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `alben`
--
ALTER TABLE `alben`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `alben`
--
ALTER TABLE `alben`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
