-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2020 a las 15:33:50
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acorde`
--

CREATE TABLE `acorde` (
  `id_tona` int(11) DEFAULT NULL,
  `id_acor` int(11) NOT NULL,
  `acorde` varchar(50) DEFAULT NULL,
  `escala` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acorde`
--

INSERT INTO `acorde` (`id_tona`, `id_acor`, `acorde`, `escala`) VALUES
(1, 1, 'A', 0x415f544f4e455f492e706e67),
(1, 2, 'Bm', 0x415f544f4e455f49492e706e67),
(1, 3, 'C#m/Dbm', 0x415f544f4e455f4949492e706e67),
(1, 4, 'D', 0x415f544f4e455f49562e706e67),
(1, 5, 'E', 0x415f544f4e455f562e706e67),
(1, 6, 'F#m/Gbm', 0x415f544f4e455f56492e706e67),
(1, 7, 'G#dim/Abdim', 0x415f544f4e455f5649492e706e67),
(2, 8, 'A#/Bb', 0x41242d42625f544f4e455f492e706e67),
(2, 9, 'Cm', 0x41242d42625f544f4e455f49492e706e67),
(2, 10, 'Dm', 0x41242d42625f544f4e455f4949492e706e67),
(2, 11, 'D#/Eb', 0x41242d42625f544f4e455f49562e706e67),
(2, 12, 'F', 0x41242d42625f544f4e455f562e706e67),
(2, 13, 'Gm', 0x41242d42625f544f4e455f56492e706e67),
(2, 14, 'Adim', 0x41242d42625f544f4e455f5649492e706e67),
(3, 15, 'B', 0x425f544f4e455f492e706e67),
(3, 16, 'C#m/Dbm', 0x425f544f4e455f49492e706e67),
(3, 17, 'E', 0x425f544f4e455f4949492e706e67),
(3, 18, 'F', 0x425f544f4e455f49562e706e67),
(3, 19, 'F#/Gb', 0x425f544f4e455f562e706e67),
(3, 20, 'G#m/Abm', 0x425f544f4e455f56492e706e67),
(3, 21, 'A#dim/Bbdim', 0x425f544f4e455f5649492e706e67),
(4, 22, 'C', 0x435f544f4e455f492e706e67),
(4, 23, 'Dm', 0x435f544f4e455f49492e706e67),
(4, 24, 'Em', 0x435f544f4e455f4949492e706e67),
(4, 25, 'F', 0x435f544f4e455f49562e706e67),
(4, 26, 'G', 0x435f544f4e455f562e706e67),
(4, 27, 'Am', 0x435f544f4e455f56492e706e67),
(4, 28, 'Bdim', 0x435f544f4e455f5649492e706e67),
(5, 29, 'C#/Db', 0x43242d44625f544f4e455f492e706e67),
(5, 30, 'D#m/Ebm', 0x43242d44625f544f4e455f49492e706e67),
(5, 31, 'Fm', 0x43242d44625f544f4e455f4949492e706e67),
(5, 32, 'F#/Gb', 0x43242d44625f544f4e455f49562e706e67),
(5, 33, 'G#/Ab', 0x43242d44625f544f4e455f562e706e67),
(5, 34, 'A#m/Bbm', 0x43242d44625f544f4e455f56492e706e67),
(5, 35, 'Cdim', 0x43242d44625f544f4e455f5649492e706e67),
(6, 36, 'D', 0x445f544f4e455f492e706e67),
(6, 37, 'Em', 0x445f544f4e455f49492e706e67),
(6, 38, 'F#m/Gbm', 0x445f544f4e455f4949492e706e67),
(6, 39, 'G', 0x445f544f4e455f49562e706e67),
(6, 40, 'A', 0x445f544f4e455f562e706e67),
(6, 41, 'Bm', 0x445f544f4e455f56492e706e67),
(6, 42, 'C#dim/Dbdim', 0x445f544f4e455f5649492e706e67),
(7, 43, 'D#/Eb', 0x44242d45625f544f4e455f492e706e67),
(7, 44, 'Fm', 0x44242d45625f544f4e455f49492e706e67),
(7, 45, 'Gm', 0x44242d45625f544f4e455f4949492e706e67),
(7, 46, 'G#/Ab', 0x44242d45625f544f4e455f49562e706e67),
(7, 47, 'A#/Bb', 0x44242d45625f544f4e455f562e706e67),
(7, 48, 'Cm', 0x44242d45625f544f4e455f56492e706e67),
(7, 49, 'Ddim', 0x44242d45625f544f4e455f5649492e706e67),
(8, 50, 'E', 0x455f544f4e455f492e706e67),
(8, 51, 'F#m/Gbm', 0x455f544f4e455f49492e706e67),
(8, 52, 'G#m/Abm', 0x455f544f4e455f4949492e706e67),
(8, 53, 'A', 0x455f544f4e455f49562e706e67),
(8, 54, 'B', 0x455f544f4e455f562e706e67),
(8, 55, 'C#m/Dbm', 0x455f544f4e455f56492e706e67),
(8, 56, 'D#dim/Ebdim', 0x455f544f4e455f5649492e706e67),
(9, 57, 'F', 0x465f544f4e455f492e706e67),
(9, 58, 'Gm', 0x465f544f4e455f49492e706e67),
(9, 59, 'Am', 0x465f544f4e455f4949492e706e67),
(9, 60, 'A#/Bb', 0x465f544f4e455f49562e706e67),
(9, 61, 'C', 0x465f544f4e455f562e706e67),
(9, 62, 'Dm', 0x465f544f4e455f56492e706e67),
(9, 63, 'Edim', 0x465f544f4e455f5649492e706e67),
(10, 64, 'F#/Gb', 0x46242d47625f544f4e455f492e706e67),
(10, 65, 'G#m/Abm', 0x46242d47625f544f4e455f49492e706e67),
(10, 66, 'A#m/Bbm', 0x46242d47625f544f4e455f4949492e706e67),
(10, 67, 'B', 0x46242d47625f544f4e455f49562e706e67),
(10, 68, 'C#/Db', 0x46242d47625f544f4e455f562e706e67),
(10, 69, 'D#m/Ebm', 0x46242d47625f544f4e455f56492e706e67),
(10, 70, 'Fdim', 0x46242d47625f544f4e455f5649492e706e67),
(11, 71, 'G', 0x475f544f4e455f492e706e67),
(11, 72, 'Am', 0x475f544f4e455f49492e706e67),
(11, 73, 'Bm', 0x475f544f4e455f4949492e706e67),
(11, 74, 'C', 0x475f544f4e455f49562e706e67),
(11, 75, 'D', 0x475f544f4e455f562e706e67),
(11, 76, 'Em', 0x475f544f4e455f56492e706e67),
(11, 77, 'F#dim/Gbdim', 0x475f544f4e455f5649492e706e67),
(12, 78, 'G#/Ab', 0x47242d41625f544f4e455f492e706e67),
(12, 79, 'A#m/Bbm', 0x47242d41625f544f4e455f49492e706e67),
(12, 80, 'Cm', 0x47242d41625f544f4e455f4949492e706e67),
(12, 81, 'C#/Db', 0x47242d41625f544f4e455f49562e706e67),
(12, 82, 'D#/Eb', 0x47242d41625f544f4e455f562e706e67),
(12, 83, 'Fm', 0x47242d41625f544f4e455f56492e706e67),
(12, 84, 'Gdim', 0x47242d41625f544f4e455f5649492e706e67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afinacion`
--

CREATE TABLE `afinacion` (
  `id_inst` int(50) DEFAULT NULL,
  `id_afin` int(11) NOT NULL,
  `afinacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `afinacion`
--

INSERT INTO `afinacion` (`id_inst`, `id_afin`, `afinacion`) VALUES
(1, 1, 'EADGBE'),
(1, 2, 'DGCFAD'),
(2, 3, 'EADG'),
(2, 4, 'DGCF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instru`
--

CREATE TABLE `instru` (
  `id_inst` int(11) NOT NULL,
  `instrument` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instru`
--

INSERT INTO `instru` (`id_inst`, `instrument`) VALUES
(1, 'Guitarra'),
(2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrument`
--

CREATE TABLE `instrument` (
  `id_inst` int(11) DEFAULT NULL,
  `instrument` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instrument`
--

INSERT INTO `instrument` (`id_inst`, `instrument`) VALUES
(2, 'Bajo'),
(1, 'Guitarra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumento`
--

CREATE TABLE `instrumento` (
  `id_inst` int(5) NOT NULL,
  `instrumento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instrumento`
--

INSERT INTO `instrumento` (`id_inst`, `instrumento`) VALUES
(1, 'Guitarra'),
(2, 'Bajo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modos`
--

CREATE TABLE `modos` (
  `NUMERO` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MODOS` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `INTERVALOS` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GRADOS` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modos`
--

INSERT INTO `modos` (`NUMERO`, `MODOS`, `INTERVALOS`, `GRADOS`) VALUES
('I', 'JONICO', 'TONO-TONO-SEMITONO-TONO-TONO-TONO-SEMITONO', '1-2-3-4-5-6-7'),
('II', 'DORICO', 'TONO-SEMITONO-TONO-TONO-TONO-SEMITONO- TONO', '1-2-b3-4-5-6-b7'),
('III', 'FRIGIO', 'SEMITONO-TONO-TONO-TONO-SEMITONO-TONO-TONO', '1-b2-b3-4-5-b6-b7'),
('IV', 'LIDIO', 'TONO-TONO-TONO-SEMITONO-TONO-TONO- SEMITONO', '1-2-3-#4-5-6-7'),
('V', 'MIXOLIDIO', 'TONO-TONO-SEMITONO-TONO-TONO- SEMITONO-TONO', '1-2-3-4-5-6-b7'),
('VI', 'EOLICO', 'TONO-SEMITONO-TONO-TONO- SEMITONO-TONO-TONO', '1-2-b3-4-5-b6-b7'),
('VII', 'LOCRIO', 'SEMITONO-TONO-TONO- SEMITONO-TONO-TONO-TONO', '1-b2-b3-4-b5-b6-b7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `song`
--

CREATE TABLE `song` (
  `id_song` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `id_inst` int(11) NOT NULL,
  `id_afin` int(11) NOT NULL,
  `id_tona` int(11) NOT NULL,
  `id_acor1` int(11) NOT NULL,
  `id_acor2` int(11) DEFAULT NULL,
  `id_acor3` int(11) DEFAULT NULL,
  `id_acor4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `song`
--

INSERT INTO `song` (`id_song`, `song_name`, `id_user`, `id_inst`, `id_afin`, `id_tona`, `id_acor1`, `id_acor2`, `id_acor3`, `id_acor4`) VALUES
(1, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(2, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(3, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(4, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(5, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(6, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(7, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(8, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(9, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(10, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(11, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(12, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(13, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(14, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(15, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(16, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(17, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(18, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(19, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(20, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(21, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(22, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(23, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(24, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(25, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(26, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(27, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(28, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(29, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(30, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(31, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(32, 'guiip`jçlñ', 2, 1, 1, 2, 13, 10, 9, 13),
(34, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(35, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(36, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(37, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(38, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(39, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(40, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(41, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(42, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(43, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(44, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(45, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(46, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(47, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(48, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(49, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(50, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(51, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(52, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(53, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(54, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(55, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(56, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(57, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(58, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(59, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(60, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(61, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(62, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(63, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(64, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(65, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(66, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(67, 'FUCK OFF', 2, 1, 1, 9, 58, 61, 63, 58),
(68, 'NEW SONG', 1, 1, 1, 11, 72, 71, 76, 76),
(69, 'asfdds', 1, 1, 1, 2, 9, 12, 12, 10),
(70, 'asfdds', 1, 1, 1, 2, 9, 12, 12, 10),
(71, 'asfdds', 1, 1, 1, 2, 9, 12, 12, 10),
(72, 'asfdds', 1, 1, 1, 2, 9, 12, 12, 10),
(83, 'THE RED ARMY', 2, 1, 1, 7, 44, 46, 45, 48),
(84, 'FAKE SONG', 1, 1, 1, 2, 11, 9, 12, 12),
(85, 'FAKE SONG', 1, 1, 1, 2, 11, 9, 12, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `todo`
--

CREATE TABLE `todo` (
  `Instrumento` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Afinacion` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tonalidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `I_MAYOR` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `I` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `II_menor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `II` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `III_menor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `III` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IV_MAYOR` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IV` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `V_MAYOR` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `V` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `VI_menor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `VI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `VII_disminuido` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `VII` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `todo`
--

INSERT INTO `todo` (`Instrumento`, `Afinacion`, `Tonalidad`, `I_MAYOR`, `I`, `II_menor`, `II`, `III_menor`, `III`, `IV_MAYOR`, `IV`, `V_MAYOR`, `V`, `VI_menor`, `VI`, `VII_disminuido`, `VII`) VALUES
('Guitarra', 'EADGBE', 'A', 'A', 'A_TONE_I.png', 'Bm', 'A_TONE_II.png', 'C#m/Dbm', 'A_TONE_III.png', 'D', 'A_TONE_IV.png', 'E', 'A_TONE_V.png', 'F#m/Gbm', 'A_TONE_VI.png', 'G#dim/Abdim', 'A_TONE_VII.png'),
('Guitarra', 'EADGBE', 'A#/Bb', 'A#/Bb', 'A#-Bb_TONE_I.png', 'Cm', 'A#-Bb_TONE_II.png', 'Dm', 'A#-Bb_TONE_III.png', 'D#/Eb', 'A#-Bb_TONE_IV.png', 'F', 'A#-Bb_TONE_V.png', 'Gm', 'A#-Bb_TONE_VI.png', 'Adim', 'A#-Bb_TONE_VII.png'),
('Guitarra', 'EADGBE', 'B', 'B', 'B_TONE_I.png', 'C#m/Dbm', 'B_TONE_II.png', 'E', 'B_TONE_III.png', 'E', 'B_TONE_IV.png', 'F#/Gb', 'B_TONE_V.png', 'G#m/Abm', 'B_TONE_VI.png', 'A#dim/Bbdim', 'B_TONE_VII.png'),
('Guitarra', 'EADGBE', 'C', 'C', 'C_TONE_I.png', 'Dm', 'C_TONE_II.png', 'Em', 'C_TONE_III.png', 'F', 'C_TONE_IV.png', 'G', 'C_TONE_V.png', 'Am', 'C_TONE_VI.png', 'Bdim', 'C_TONE_VII.png'),
('Guitarra', 'EADGBE', 'C#/Db', 'C#/Db', 'C#-Db_TONE_I.png', 'D#m/Ebm', 'C#-Db_TONE_II.png', 'Fm', 'C#-Db_TONE_III.png', 'F#/Gb', 'C#-Db_TONE_IV.png', 'G#/Ab', 'C#-Db_TONE_V.png', 'A#m/Bbm', 'C#-Db_TONE_VI.png', 'Cdim', 'C#-Db_TONE_VII.png'),
('Guitarra', 'EADGBE', 'D', 'D', 'D_TONE_I.png', 'Em', 'D_TONE_II.png', 'F#m/Gbm', 'D_TONE_III.png', 'G', 'D_TONE_IV.png', 'A', 'D_TONE_V.png', 'Bm', 'D_TONE_VI.png', 'C#dim/Dbdim', 'D_TONE_VII.png'),
('Guitarra', 'EADGBE', 'D#/Eb', 'D#/Eb', 'D#-Eb_TONE_I.png', 'Fm', 'D#-Eb_TONE_II.png', 'Gm', 'D#-Eb_TONE_III.png', 'G#/Ab', 'D#-Eb_TONE_IV.png', 'A#/Bb', 'D#-Eb_TONE_V.png', 'Cm', 'D#-Eb_TONE_VI.png', 'Ddim', 'D#-Eb_TONE_VII.png'),
('Guitarra', 'EADGBE', 'E', 'E', 'E_TONE_I.png', 'F#m/Gbm', 'E_TONE_II.png', 'G#m/Abm', 'E_TONE_III.png', 'A', 'E_TONE_IV.png', 'B', 'E_TONE_V.png', 'C#m/Dbm', 'E_TONE_VI.png', 'D#dim/Ebdim', 'E_TONE_VII.png'),
('Guitarra', 'EADGBE', 'F', 'F', 'F_TONE_I.png', 'Gm', 'F_TONE_II.png', 'Am', 'F_TONE_III.png', 'A#/Bb', 'F_TONE_IV.png', 'C', 'F_TONE_V.png', 'Dm', 'F_TONE_VI.png', 'Edim', 'F_TONE_VII.png'),
('Guitarra', 'EADGBE', 'F#/Gb', 'F#/Gb', 'F#-Gb_TONE_I.png', 'G#m/Abm', 'F#-Gb_TONE_II.png', 'A#m/Bbm', 'F#-Gb_TONE_III.png', 'B', 'F#-Gb_TONE_IV.png', 'C#/Db', 'F#-Gb_TONE_V.png', 'D#m/Ebm', 'F#-Gb_TONE_VI.png', 'Fdim', 'F#-Gb_TONE_VII.png'),
('Guitarra', 'EADGBE', 'G', 'G', 'G_TONE_I.png', 'Am', 'G_TONE_II.png', 'Bm', 'G_TONE_III.png', 'C', 'G_TONE_IV.png', 'D', 'G_TONE_V.png', 'Em', 'G_TONE_VI.png', 'F#dim/Gbdim', 'G_TONE_VII.png'),
('Guitarra', 'EADGBE', 'G#/Ab', 'G#/Ab', 'G#-Ab_TONE_I.png', 'A#m/Bbm', 'G#-Ab_TONE_II.png', 'Cm', 'G#-Ab_TONE_III.png', 'C#/Db', 'G#-Ab_TONE_IV.png', 'D#/Eb', 'G#-Ab_TONE_V.png', 'Fm', 'G#-Ab_TONE_VI.png', 'Gdim', 'G#-Ab_TONE_VII.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tonalidad`
--

CREATE TABLE `tonalidad` (
  `id_afin` int(50) DEFAULT NULL,
  `id_tona` int(11) NOT NULL,
  `tonalidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tonalidad`
--

INSERT INTO `tonalidad` (`id_afin`, `id_tona`, `tonalidad`) VALUES
(1, 1, 'A'),
(1, 2, 'A#/Bb'),
(1, 3, 'B'),
(1, 4, 'C'),
(1, 5, 'C#/Db'),
(1, 6, 'D'),
(1, 7, 'D#/Eb'),
(1, 8, 'E'),
(1, 9, 'F'),
(1, 10, 'F#/Gb'),
(1, 11, 'G'),
(1, 12, 'G#/Ab'),
(2, 13, '2A'),
(2, 14, '2A#/Bb'),
(2, 15, '2B'),
(2, 16, '2C'),
(2, 17, '2C#/Db'),
(2, 18, '2D'),
(2, 19, '2D#/Eb'),
(2, 20, '2E'),
(2, 21, '2F'),
(2, 22, '2F#/Gb'),
(2, 23, '2G'),
(2, 24, '2G#/Ab');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tono`
--

CREATE TABLE `tono` (
  `tonalidad` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `I_MAYOR` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `II_menor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `III_menor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IV_MAYOR` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `V_MAYOR` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `VI_menor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `VII_disminuido` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tono`
--

INSERT INTO `tono` (`tonalidad`, `I_MAYOR`, `II_menor`, `III_menor`, `IV_MAYOR`, `V_MAYOR`, `VI_menor`, `VII_disminuido`) VALUES
('A', 'A', 'Bm', 'C#m/Dbm', 'D', 'E', 'F#m/Gbm', 'G#dim/Abdim'),
('A#/Bb', 'A#/Bb', 'Cm', 'Dm', 'D#/Eb', 'F', 'Gm', 'Adim'),
('B', 'B', 'C#m/Dbm', 'D#m/Ebm', 'E', 'F#/Gb', 'G#m/Abm', 'A#dim/Bbdim'),
('C', 'C', 'Dm', 'Em', 'F', 'G', 'Am', 'Bdim'),
('C#/Db', 'C#/Db', 'D#m/Ebm', 'Fm', 'F#/Gb', 'G#/Ab', 'A#m/Bbm', 'Cdim'),
('D', 'D', 'Em', 'F#m/Gbm', 'G', 'A', 'Bm', 'C#dim/Dbdim'),
('D#/Eb', 'D#/Eb', 'Fm', 'Gm', 'G#/Ab', 'A#/Bb', 'Cm', 'Ddim'),
('E', 'E', 'F#m/Gbm', 'G#m/Abm', 'A', 'B', 'C#m/Dbm', 'D#dim/Ebdim'),
('F', 'F', 'Gm', 'Am', 'A#/Bb', 'C', 'Dm', 'Edim'),
('F#/Gb', 'F#/Gb', 'G#m/Abm', 'A#m/Bbm', 'B', 'C#/Db', 'D#m/Ebm', 'Fdim'),
('G', 'G', 'Am', 'Bm', 'C', 'D', 'Em', 'F#dim/Gbdim'),
('G#/Ab', 'G#/Ab', 'A#m/Bbm', 'Cm', 'C#/Db', 'D#/Eb', 'Fm', 'Gdim');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Este perfil esta verificado?',
  `banned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Este perfil esta baneado?',
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Verifico el correo',
  `signup_date` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `signup_ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `verified`, `banned`, `code`, `token`, `confirmed`, `signup_date`, `last_login`, `signup_ip`, `last_ip`) VALUES
(1, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 'aaa@aaa.com', 'aaa', '0', '0', '5eb6d250878a7', '', '0', '2020-05-09 17:54:56', NULL, NULL, '::1'),
(2, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', 'bbb@bbb.vom', 'bbb', '0', '0', '5eb6d27deb322', '', '0', '2020-05-09 17:55:41', NULL, NULL, '::1'),
(3, 'ccc', '9df62e693988eb4e1e1444ece0578579', 'ccc@ccc.com', 'ccc', '0', '0', '5eb6e36c9fefc', '', '0', '2020-05-09 19:07:56', NULL, NULL, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xd`
--

CREATE TABLE `xd` (
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `xd`
--

INSERT INTO `xd` (`token`) VALUES
('???'),
('???');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acorde`
--
ALTER TABLE `acorde`
  ADD PRIMARY KEY (`id_acor`),
  ADD KEY `id_tona` (`id_tona`);

--
-- Indices de la tabla `afinacion`
--
ALTER TABLE `afinacion`
  ADD PRIMARY KEY (`id_afin`),
  ADD KEY `id_inst` (`id_inst`);

--
-- Indices de la tabla `instru`
--
ALTER TABLE `instru`
  ADD PRIMARY KEY (`id_inst`);

--
-- Indices de la tabla `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`instrument`);

--
-- Indices de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  ADD PRIMARY KEY (`id_inst`);

--
-- Indices de la tabla `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id_song`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_inst` (`id_inst`),
  ADD KEY `id_afin` (`id_afin`),
  ADD KEY `id_tona` (`id_tona`),
  ADD KEY `id_acor1` (`id_acor1`),
  ADD KEY `id_acor2` (`id_acor2`),
  ADD KEY `id_acor3` (`id_acor3`),
  ADD KEY `id_acor4` (`id_acor4`);

--
-- Indices de la tabla `tonalidad`
--
ALTER TABLE `tonalidad`
  ADD PRIMARY KEY (`id_tona`),
  ADD KEY `id_afin` (`id_afin`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acorde`
--
ALTER TABLE `acorde`
  MODIFY `id_acor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `afinacion`
--
ALTER TABLE `afinacion`
  MODIFY `id_afin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  MODIFY `id_inst` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `song`
--
ALTER TABLE `song`
  MODIFY `id_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `tonalidad`
--
ALTER TABLE `tonalidad`
  MODIFY `id_tona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acorde`
--
ALTER TABLE `acorde`
  ADD CONSTRAINT `acorde_ibfk_1` FOREIGN KEY (`id_tona`) REFERENCES `tonalidad` (`id_tona`);

--
-- Filtros para la tabla `afinacion`
--
ALTER TABLE `afinacion`
  ADD CONSTRAINT `afinacion_ibfk_1` FOREIGN KEY (`id_inst`) REFERENCES `instrumento` (`id_inst`);

--
-- Filtros para la tabla `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`id_inst`) REFERENCES `instrumento` (`id_inst`),
  ADD CONSTRAINT `song_ibfk_3` FOREIGN KEY (`id_afin`) REFERENCES `afinacion` (`id_afin`),
  ADD CONSTRAINT `song_ibfk_4` FOREIGN KEY (`id_tona`) REFERENCES `tonalidad` (`id_tona`),
  ADD CONSTRAINT `song_ibfk_5` FOREIGN KEY (`id_acor1`) REFERENCES `acorde` (`id_acor`),
  ADD CONSTRAINT `song_ibfk_6` FOREIGN KEY (`id_acor2`) REFERENCES `acorde` (`id_acor`),
  ADD CONSTRAINT `song_ibfk_7` FOREIGN KEY (`id_acor3`) REFERENCES `acorde` (`id_acor`),
  ADD CONSTRAINT `song_ibfk_8` FOREIGN KEY (`id_acor4`) REFERENCES `acorde` (`id_acor`);

--
-- Filtros para la tabla `tonalidad`
--
ALTER TABLE `tonalidad`
  ADD CONSTRAINT `tonalidad_ibfk_1` FOREIGN KEY (`id_afin`) REFERENCES `afinacion` (`id_afin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
