-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-08-2018 a las 18:02:12
-- Versión del servidor: 5.6.39-83.1
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lanpro_soportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategorias` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `nombre`, `descripcion`) VALUES
(1, 'nacionales', 'soportes nacionales'),
(2, 'importados', 'soportes importados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `idimagen` int(11) NOT NULL,
  `imagenuno` varchar(200) DEFAULT NULL,
  `imagendos` varchar(200) DEFAULT NULL,
  `imagentres` varchar(200) DEFAULT NULL,
  `imagencuatro` varchar(200) DEFAULT NULL,
  `productos_idproductos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`idimagen`, `imagenuno`, `imagendos`, `imagentres`, `imagencuatro`, `productos_idproductos`) VALUES
(32, 'soporte giratorio economico.jpg', 'soporte giratorio economico 48 a 52.jpg', 'soporte giratorio economico 48 a 52.jpg', 'soporte giratorio economicotres.jpg', 337),
(33, 'tipoaraÃ±a.jpg', 'tipoaraÃ±a.jpg', 'compraloya.jpg', 'soportearaÃ±anumero.jpg', 338),
(34, 'soporte un brazo economico.jpg', 'soporte un brazo economico dos.jpg', 'soporte un brazo rotatorio cuatro.jpg', 'soporte un brazo rotatorio tres.jpg', 339),
(35, 'soportesolobrazogira.jpg', 'soportesolobrazogiracuatro.jpg', 'soportesolobrazogirados.jpg', 'soportesolobrazogiratres.jpg', 340),
(36, 'soportedoblebrazogiratorio.jpg', 'soportedoblebrazogiratoriocuatro.jpg', 'soportedoblebrazogiratoriodos.jpg', 'soportedoblebrazogiratoriotres.jpg', 341),
(37, 'soporte pared.jpg', 'soporte paredCuatro.jpg', 'soporte pareddos.jpg', 'soporte paredtres.jpg', 342),
(39, 'soporteimportadopared.jpg', 'soporteimportadopared.jpg', 'soporteimportadoparedcuatro.jpg', 'soporteimportadoparedtres.jpg', 344),
(40, 'soporte importado giratorio tres.jpg', 'soporte importado giratorio.jpg', 'soporte importado araÃ±a.jpg', 'soporte importado giratorio.jpg', 345),
(41, 'fijo.jpg', 'fijo2.jpg', 'fijo3.jpg', 'fijo4.jpg', 346),
(42, 'repisa.jpg', 'repisa2.jpg', 'repisa3.jpg', 'repisa4.jpg', 347),
(43, 'soportehidraulico.jpg', 'soportehidraulicodos.jpg', 'soportehidraulicotres.jpg', 'soportehidraulicocuatro.jpg', 348);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproductos` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `haspromocion` tinyint(1) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `preciopromocion` varchar(45) DEFAULT NULL,
  `usuarios_idusuario` int(11) NOT NULL,
  `categorias_idcategorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproductos`, `nombre`, `descripcion`, `haspromocion`, `precio`, `preciopromocion`, `usuarios_idusuario`, `categorias_idcategorias`) VALUES
(337, 'soporte giratorio nacional', 'Soporte giratorio fijo De 42\" a 58\" bueno bonito y barato', 0, '60.000', '65.000', 1, 1),
(338, 'soporte arana', 'Soporte araÃ±a De 42\" a 65\" ', 0, '75.000', '70000', 1, 1),
(339, 'soporte gitatorio un solo brazo nacional', 'Este es un excelente soporte de  28\" a 42\" excelente y elegante a  domicilio  ', 0, '50.000', '45.000', 1, 1),
(340, 'soporte solo brazo', 'Soporte un solo brazo De 28\" a 42\"  gira 45 grados hacia los lados', 0, '40.000', '40.000', 1, 1),
(341, 'soporte doble brazo giratorio', 'Soporte doble brazo giratorio De 42\" a 70\" la mejor opcion soporte el peso de televisores ', 0, '80.000', '75.000', 1, 1),
(342, 'soporte Pared', 'Optimizador de soportes excelente opcion a domicilio info whatsapp 3214448636', 0, '65.000', '65.000', 1, 1),
(344, 'soporte doble brazo importado', 'soporte importado de 42 a 60 pulgadas excelente para optimizar espacios', 0, '80.000', '80.000', 1, 2),
(345, 'soporte giratorio importado', 'Soporte giratorio De 32\" a 58\" excelente calidad  muy buena sensibiliad', 0, '70000', '70000', 1, 2),
(346, 'soporte fijo economico', 'economico y excelente opcion para su tv soporte fijo', 0, '40.000', '40.000', 1, 1),
(347, 'repisa importada ', 'repisa importada idel para xbox play o dvd', 0, '45.000', '45.000', 1, 2),
(348, 'soporte hidraulico', 'soporte hidraulico north baloy soporte importado excelente tecnologia a base de gas funciona correctamente', 1, '80.000', '80.000', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `password`) VALUES
(1, 'daniel', '12345Az!'),
(2, 'daniel', '1061731409');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategorias`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`idimagen`),
  ADD KEY `fk_imagen_productos1_idx` (`productos_idproductos`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproductos`),
  ADD KEY `fk_productos_usuarios_idx` (`usuarios_idusuario`),
  ADD KEY `fk_productos_categorias1_idx` (`categorias_idcategorias`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `fk_imagen_productos1` FOREIGN KEY (`productos_idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categorias1` FOREIGN KEY (`categorias_idcategorias`) REFERENCES `categorias` (`idcategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_usuarios` FOREIGN KEY (`usuarios_idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
