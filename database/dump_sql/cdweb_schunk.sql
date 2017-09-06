-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 06. Sep 2017 um 06:22
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
  `rating` int(1) DEFAULT NULL,
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
(1, 'The Stage', 'img/cover/thestage.jpg', 'Metal', 5, '2016', NULL, 1, 0, 1, 1),
(2, 'The Scene', 'img/cover/thescene.jpg', 'Metal Core', 0, '2017', 'Geil Gut Schön', 1, 0, 2, 2),
(3, 'Crooked Teeth', 'img/cover/crooked.jpg', 'Punk', 4, '2017', NULL, 1, 1, 3, 2),
(4, 'Party''s Over', 'img/cover/prophets.jpg', 'Crossover', 5, '2016', NULL, 1, 0, 4, 3);

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
(2, 'Eskimo Callboy'),
(3, 'Papa Roach'),
(4, 'Prophets Of Rage');

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
(2, 'LP'),
(3, 'MP3');

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
(1, 'The Stage', 1, '8:32', 'https://www.youtube.com/embed/fBYVlFXsEME', 1),
(2, 'Paradigm', 2, '4:18', 'https://www.youtube.com/embed/3A8zJNE_ZZ8', 1),
(3, 'Sunny Disposition', 3, '6:41', 'https://www.youtube.com/embed/1bKo5WcCWwo', 1),
(4, 'God Damn', 4, '3:41', 'https://www.youtube.com/embed/wapOqjQ4r_M', 1),
(5, 'Creating God', 5, '5:34', 'https://www.youtube.com/embed/2WxGoFS5d_Y', 1),
(6, 'Angels', 6, '5:40', 'https://www.youtube.com/embed/IunKwRqeAmk', 1),
(7, 'Simulation', 7, '5:30', 'https://www.youtube.com/embed/UY2AS8s4G5U', 1),
(8, 'Higher', 8, '6:28', 'https://www.youtube.com/embed/jpha0NDE1Qc', 1),
(9, 'Roman Sky', 9, '5:00', 'https://www.youtube.com/embed/fRQdqA2dKkk', 1),
(10, 'Fermi Paradox', 10, '6:30', 'https://www.youtube.com/embed/vl8rofNa0tI', 1),
(11, 'Exist', 11, '15:41', 'https://www.youtube.com/embed/ntgOlFbGWLY', 1),
(12, 'Back In The Bizz', 1, '3:08', 'https://www.youtube.com/embed/MUv8bDb4qtg', 2),
(13, 'MC Thunder', 2, '3:51', 'https://www.youtube.com/embed/wobbf3lb2nk', 2),
(14, 'The Devil Within', 3, '3:44', 'https://www.youtube.com/embed/-TXW-N6GSzw', 2),
(15, 'Banshee', 4, '3:21', 'https://www.youtube.com/embed/8sVNm5XQ5Ug', 2),
(16, 'The Scene', 5, '3:13', 'https://www.youtube.com/embed/mVTxyZNV2IM?', 2),
(17, 'VIP', 6, '3:10', 'https://www.youtube.com/embed/CU_QSI1Xf8c', 2),
(18, 'Shallows', 7, '3:21', 'https://www.youtube.com/embed/p4umCgQdzjc', 2),
(19, 'Nightlife', 8, '3:42', 'https://www.youtube.com/embed/Xj9GTy3MAwI', 2),
(20, 'X', 9, '0:57', NULL, 2),
(21, 'New Age', 10, '3:21', 'https://www.youtube.com/embed/oIoGXxDjSRs', 2),
(22, 'Frances', 11, '3:37', 'https://www.youtube.com/embed/gwv0EQ_F9IU', 2),
(23, 'Rooftop', 12, '3:07', 'https://www.youtube.com/embed/Fwo4NlWPJZA', 2),
(24, 'Calling', 13, '4:20', 'https://www.youtube.com/embed/vPzWQuob5yo', 2),
(25, 'Break The Fall', 1, '3:10', 'https://www.youtube.com/embed/bEZDoHmzkgE', 3),
(26, 'Crooked Teeth', 2, '3:03', 'https://www.youtube.com/embed/4HS2DQrG7wE', 0),
(28, 'My Medication', 3, '3:15', 'https://www.youtube.com/embed/1puwYJOute0', 3),
(29, 'Born For Greatness', 4, '3:47', 'https://www.youtube.com/embed/8i8uLP71U8Q', 3),
(30, 'American Dreams', 5, '3:23', 'https://www.youtube.com/embed/i6KX2mB7LHI', 3),
(31, 'Periscope', 6, '3:36', 'https://www.youtube.com/embed/NrEVYQ4zQAA', 3),
(32, 'Help', 7, '3:34', 'https://www.youtube.com/embed/HYLTsdeO2uA', 3),
(33, 'Sunrise Trailer Park', 8, '3:47', 'https://www.youtube.com/embed/RWwX7XRBI78', 3),
(34, 'Traumatic', 9, '2:48', 'https://www.youtube.com/embed/4T3ua9kMAlI', 3),
(35, 'None Of The Above', 10, '3:34', 'https://www.youtube.com/embed/QQhU6yTntK8', 3),
(36, 'Prophets Of Rage', 1, '3:09', 'https://www.youtube.com/embed/2220MdXVPGw', 4),
(37, 'The Party''s Over', 2, '3:31', 'https://www.youtube.com/embed/JD8aZNKNefk', 4),
(38, 'Killing In The Name (Live)', 3, '5:15', 'https://www.youtube.com/embed/d2kDSUP0yTk', 4),
(39, 'Shut Em Down (Live)', 4, '3:34', 'https://www.youtube.com/embed/jHPSrNfhog8', 4),
(40, 'No Sleep Til Cleveland (Live)', 5, '5:14', 'https://www.youtube.com/embed/v_RuhOpG1-A', 4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `interpret`
--
ALTER TABLE `interpret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `medium`
--
ALTER TABLE `medium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `titel`
--
ALTER TABLE `titel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
