-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2023 a las 23:01:50
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paginawebphp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_lenguages`
--

CREATE TABLE `tm_lenguages` (
  `len_id` int(11) NOT NULL,
  `len_nom` varchar(50) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_lenguages`
--

INSERT INTO `tm_lenguages` (`len_id`, `len_nom`, `est`) VALUES
(1, 'Inicio', 1),
(2, 'Servicios', 1),
(3, 'Contáctenos', 1),
(4, '¿Quienes somos?', 1),
(5, 'Servicios', 1),
(6, 'Historia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `pro_id` int(11) NOT NULL,
  `pro_titulo` varchar(150) NOT NULL,
  `pro_subtitulo` varchar(150) NOT NULL,
  `pro_img` varchar(50) NOT NULL,
  `pro_url` varchar(600) NOT NULL,
  `pro_desta` int(11) NOT NULL,
  `est` int(11) NOT NULL,
  `fech_crea` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`pro_id`, `pro_titulo`, `pro_subtitulo`, `pro_img`, `pro_url`, `pro_desta`, `est`, `fech_crea`) VALUES
(1, '¡Descubre las últimas novedades de nuestros productos de limpieza, Limpio Be!', 'Alcol Puro 96° G.L', '1.jpg', 'https://www.facebook.com/photo.php?fbid=484102947071231&set=pb.100064145884787.-2207520000&type=3', 1, 1, '2023-08-25 19:19:25'),
(2, '¡Descubre las últimas novedades de nuestros productos de limpieza, Limpio Be!', 'Jabón Líquido', '2.jpg', 'https://www.facebook.com/photo/?fbid=484913910323468&set=pb.100064145884787.-2207520000', 1, 1, '2023-08-25 00:00:00'),
(3, 'Alcohol Puro 96° G.L', 'Alcohol Puro 96° G.L', 'alcohol.jpg', 'https://www.facebook.com/photo.php?fbid=518080410340151&set=pb.100064145884787.-2207520000&type=3', 0, 1, '2023-08-25 00:00:00'),
(4, 'Jabón Líquido', 'Jabón Líquido', 'jabon.jpg', 'https://www.facebook.com/photo.php?fbid=484913910323468&set=pb.100064145884787.-2207520000&type=3', 0, 1, '2023-08-25 00:00:00'),
(5, 'Desinfectante Pino', 'Desinfectante Pino', 'desinfectante.jpg', 'https://www.facebook.com/photo/?fbid=486598406821685&set=pb.100064145884787.-2207520000', 0, 1, '2023-08-25 00:00:00'),
(6, 'Lejía', 'Lejía', 'lejia.jpg', 'https://www.facebook.com/photo.php?fbid=497251609089698&set=pb.100064145884787.-2207520000&type=3', 0, 1, '2023-08-25 19:40:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_socialmedia`
--

CREATE TABLE `tm_socialmedia` (
  `sm_id` int(11) NOT NULL,
  `sm_nom` varchar(150) NOT NULL,
  `sm_icon1` varchar(50) NOT NULL,
  `sm_icon2` varchar(50) NOT NULL,
  `sm_rutaweb` varchar(250) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_socialmedia`
--

INSERT INTO `tm_socialmedia` (`sm_id`, `sm_nom`, `sm_icon1`, `sm_icon2`, `sm_rutaweb`, `est`) VALUES
(1, 'facebook', 'fb', 'social_facebook', 'https://www.facebook.com/LimpioBe', 1),
(2, 'instagram', 'in', 'social_instagram', 'https://www.instagram.com/efrainllontop1/?hl=es-la', 1),
(3, 'youtube', 'pt', 'social_youtube', '#', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_lenguages`
--
ALTER TABLE `tm_lenguages`
  ADD PRIMARY KEY (`len_id`);

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indices de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  ADD PRIMARY KEY (`sm_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_lenguages`
--
ALTER TABLE `tm_lenguages`
  MODIFY `len_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
