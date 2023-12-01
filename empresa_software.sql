-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2023 a las 02:49:25
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
-- Base de datos: `empresa_software`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `telefono` int(10) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `direccion`, `telefono`, `email`) VALUES
(1, 'Maria', 'calle 123', 123456, 'maria@correo.com'),
(2, 'Freddy', NULL, 127895, 'fredy@correo.com'),
(3, 'Kira', NULL, 225567, 'kira@correo.com'),
(4, 'Charly', 'calle 456', 956844, 'charly@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_servicio`
--

CREATE TABLE `producto_servicio` (
  `id_servicio` int(10) NOT NULL,
  `nombre_servicio` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_servicio`
--

INSERT INTO `producto_servicio` (`id_servicio`, `nombre_servicio`) VALUES
(1, 'Software A'),
(2, 'Software B'),
(3, 'Software D'),
(4, 'Software K'),
(5, 'Software Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto_servicio`
--

CREATE TABLE `tipo_producto_servicio` (
  `id_prod_serv` int(10) NOT NULL,
  `dificultad` varchar(25) NOT NULL,
  `duracion` varchar(25) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_producto_servicio`
--

INSERT INTO `tipo_producto_servicio` (`id_prod_serv`, `dificultad`, `duracion`, `precio`, `tipo`) VALUES
(1, 'Experimental', 'Corto plazo', '2500.00', 'Software Gestion'),
(2, 'Dificil', 'Mediano plazo', '6500.00', 'Software Gestion'),
(3, 'Estandar', 'Largo plazo', '3200.00', 'Software Logistica'),
(4, 'Jr', 'Corto plazo', '1920.00', 'Software Logistica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `total` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fecha`, `id_cliente`, `id_servicio`, `id_prod_serv`, `total`) VALUES
(1, '2023-11-09', 4, 5, 2, '3200.00'),
(2, '2023-09-12', 3, 1, 4, '1920.00'),
(4, '2023-11-11', 1, 4, 3, '3200.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `producto_servicio`
--
ALTER TABLE `producto_servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `tipo_producto_servicio`
--
ALTER TABLE `tipo_producto_servicio`
  ADD PRIMARY KEY (`id_prod_serv`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_prod_serv` (`id_prod_serv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto_servicio`
--
ALTER TABLE `producto_servicio`
  MODIFY `id_servicio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_producto_servicio`
--
ALTER TABLE `tipo_producto_servicio`
  MODIFY `id_prod_serv` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `producto_servicio` (`id_servicio`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_prod_serv`) REFERENCES `tipo_producto_servicio` (`id_prod_serv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
