-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-09-2024 a las 23:31:31
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `infotienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
CREATE TABLE IF NOT EXISTS `fabricantes` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`codigo`, `nombre`, `direccion`) VALUES
(1, 'Samsung', 'dean funes 238'),
(2, 'Logitech', 'jujuy 987'),
(3, 'Sony', 'san martin 175');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `fk_codigo` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_codigo` (`fk_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `precio`, `fk_codigo`) VALUES
(1, 'Mouse Gamer Logitech', 75000, 2),
(2, 'PlayStation 5', 1020000, 3),
(3, 'S20 FE', 486000, 1),
(4, 'A03 Plus', 286000, 1),
(5, 'Teclado Logitech RGB', 86000, 2),
(6, 'Auriculares Buetooth', 175000, 3),
(7, 'Cargador Samsung Carga Rapida', 68000, 1),
(8, 'Notebook VAIO', 686000, 3),
(9, 'Auriculares Gamer RGB', 49000, 2),
(10, 'Monitor 24\" Sony', 486000, 3),
(11, 'Webcam Clasica 720p', 32000, 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_codigo` FOREIGN KEY (`fk_codigo`) REFERENCES `fabricantes` (`codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
