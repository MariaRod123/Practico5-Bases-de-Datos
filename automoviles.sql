-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 16:13:55
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `automoviles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componente`
--

CREATE TABLE `componente` (
  `id_componente` int(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componente`
--

INSERT INTO `componente` (`id_componente`, `nombre`, `id_marca`) VALUES
(1, 'kit inyeccion', 3),
(2, 'kit inyeccion', 4),
(3, 'kit inyeccion', 1),
(4, 'kit inyeccion', 2),
(5, 'kit inyeccion', 5),
(6, 'kit inyeccion', 6),
(7, 'kit inyeccion', 7),
(8, 'kit inyeccion', 8),
(9, 'kit inyeccion', 9),
(10, 'Carburador', 1),
(11, 'Carburador', 2),
(12, 'Carburador', 3),
(13, 'Carburador', 4),
(14, 'Carburador', 5),
(15, 'Carburador', 6),
(16, 'Carburador', 7),
(17, 'Carburador', 9),
(18, 'Carburador', 8),
(19, 'Pistones', 1),
(20, 'Pistones', 2),
(21, 'Pistones', 3),
(22, 'Pistones', 4),
(23, 'Pistones', 5),
(24, 'Pistones', 6),
(25, 'Pistones', 7),
(26, 'Pistones', 8),
(27, 'Pistones', 9),
(28, 'Aire Acondicionado', 1),
(29, 'Aire Acondicionado', 2),
(30, 'Aire Acondicionado', 3),
(31, 'Aire Acondicionado', 4),
(32, 'Aire Acondicionado', 5),
(33, 'Aire Acondicionado', 6),
(34, 'Aire Acondicionado', 7),
(35, 'Aire Acondicionado', 8),
(36, 'Aire Acondicionado', 9),
(37, 'Cubiertas', 1),
(38, 'Cubiertas', 2),
(39, 'Cubiertas', 3),
(40, 'Cubiertas', 4),
(41, 'Cubiertas', 5),
(42, 'Cubiertas', 6),
(43, 'Cubiertas', 7),
(44, 'Cubiertas', 8),
(45, 'Cubiertas', 9),
(46, 'Llantas', 1),
(47, 'Llantas', 2),
(48, 'Llantas', 3),
(49, 'Llantas', 4),
(51, 'Llantas', 5),
(52, 'Llantas', 6),
(53, 'Llantas', 7),
(54, 'Llantas', 8),
(55, 'Llantas', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `modelos` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`, `modelos`) VALUES
(1, 'AUDI', 'A6 Sed?n'),
(2, 'AUDI', 'Q3 SportBlack'),
(3, 'AUDI', 'e-tron'),
(4, 'FIAT', 'FIAT 60O Hybrid'),
(5, 'FIAT', 'FIAT 500e'),
(6, 'FIAT', 'FIAT Panda Hybrid'),
(7, 'FORD', 'Focus'),
(8, 'FORD', 'Fiesta'),
(9, 'FORD', 'EcoSport');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id_stock` int(10) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `id_componente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id_stock`, `cantidad`, `id_componente`) VALUES
(1, 3, 1),
(2, 2, 2),
(3, 4, 3),
(4, 5, 4),
(5, 4, 5),
(6, 10, 6),
(7, 11, 7),
(8, 6, 8),
(9, 3, 9),
(10, 6, 10),
(11, 4, 11),
(12, 3, 12),
(13, 3, 13),
(14, 4, 14),
(15, 2, 15),
(16, 6, 16),
(17, 3, 17),
(18, 5, 18),
(19, 4, 19),
(20, 6, 20),
(21, 6, 21),
(22, 2, 22),
(23, 1, 23),
(24, 4, 24),
(25, 3, 25),
(26, 7, 26),
(27, 6, 27),
(28, 3, 28),
(29, 5, 29),
(30, 9, 30),
(31, 3, 31),
(32, 7, 32),
(33, 4, 33),
(34, 7, 34),
(35, 8, 35),
(36, 4, 36),
(37, 4, 37),
(38, 2, 38),
(39, 5, 39),
(40, 12, 40),
(41, 15, 41),
(42, 20, 42),
(43, 19, 43),
(44, 23, 44),
(45, 14, 45),
(46, 10, 46),
(47, 18, 47),
(48, 11, 48),
(49, 12, 49),
(50, 10, 51),
(51, 16, 52),
(52, 20, 53),
(53, 9, 54),
(54, 8, 55);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `componente`
--
ALTER TABLE `componente`
  ADD PRIMARY KEY (`id_componente`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `id_componente` (`id_componente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `componente`
--
ALTER TABLE `componente`
  MODIFY `id_componente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `componente`
--
ALTER TABLE `componente`
  ADD CONSTRAINT `componente_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_componente`) REFERENCES `componente` (`id_componente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
