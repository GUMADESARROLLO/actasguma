-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2016 a las 18:16:58
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

--
-- Base de datos: `actasguma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actasguma`
--

CREATE TABLE `actasguma` (
  `id_acta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `objetivos` text COLLATE utf8_unicode_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  `pendientes_anteriores` text COLLATE utf8_unicode_ci NOT NULL,
  `avances_actividades` text COLLATE utf8_unicode_ci NOT NULL,
  `acuerdos` text COLLATE utf8_unicode_ci NOT NULL,
  `invitados` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actasguma`
--

INSERT INTO `actasguma` (`id_acta`, `fecha`, `objetivos`, `id_empresa`, `id_lugar`, `pendientes_anteriores`, `avances_actividades`, `acuerdos`, `invitados`) VALUES
(1, '2016-11-22', '<p style="text-align: justify;"><span style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut diam a sem dignissim convallis eget ac magna. Mauris non ornare arcu. Vestibulum justo ante, accumsan posuere lectus sed, finibus consequat augue. Donec non tristique velit. Nulla scelerisque, eros vitae eleifend suscipit, magna purus laoreet sapien, et rhoncus lorem dolor eget ante. Aliquam sed est massa. Phasellus vitae massa ac est suscipit fermentum nec sit amet diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras fermentum dictum nunc ac tincidunt.</span></p>', 5, 1, '<p style="text-align: justify;"><span style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut diam a sem dignissim convallis eget ac magna. Mauris non ornare arcu. Vestibulum justo ante, accumsan posuere lectus sed, finibus consequat augue. Donec non tristique velit. Nulla scelerisque, eros vitae eleifend suscipit, magna purus laoreet sapien, et rhoncus lorem dolor eget ante. Aliquam sed est massa. Phasellus vitae massa ac est suscipit fermentum nec sit amet diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras fermentum dictum nunc ac tincidunt.</span></p>', '<p style="text-align: justify;"><span style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut diam a sem dignissim convallis eget ac magna. Mauris non ornare arcu. Vestibulum justo ante, accumsan posuere lectus sed, finibus consequat augue. Donec non tristique velit. Nulla scelerisque, eros vitae eleifend suscipit, magna purus laoreet sapien, et rhoncus lorem dolor eget ante. Aliquam sed est massa. Phasellus vitae massa ac est suscipit fermentum nec sit amet diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras fermentum dictum nunc ac tincidunt.</span></p>', '<p style="text-align: justify;"><span style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut diam a sem dignissim convallis eget ac magna. Mauris non ornare arcu. Vestibulum justo ante, accumsan posuere lectus sed, finibus consequat augue. Donec non tristique velit. Nulla scelerisque, eros vitae eleifend suscipit, magna purus laoreet sapien, et rhoncus lorem dolor eget ante. Aliquam sed est massa. Phasellus vitae massa ac est suscipit fermentum nec sit amet diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras fermentum dictum nunc ac tincidunt.</span></p>', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actasparticipantes`
--

CREATE TABLE `actasparticipantes` (
  `id_actasparticipantes` int(11) NOT NULL,
  `id_participante` int(11) NOT NULL,
  `id_acta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actasparticipantes`
--

INSERT INTO `actasparticipantes` (`id_actasparticipantes`, `id_participante`, `id_acta`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL,
  `empresa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresa`, `empresa`, `tipo`) VALUES
(1, 'UNIMARK S.A.', 'G'),
(2, 'INNOVA S.A.', 'G'),
(3, 'UMA-AGRO S.A.', 'G'),
(4, 'AGLOSA S.A.', 'G'),
(5, 'Informática IT (GCIT)', 'C'),
(6, 'Operación y Logística (GCOL)', 'C'),
(7, 'Administración Financiera (GCAF)', 'C'),
(8, 'Gestión Humana (GCGH)', 'C'),
(9, 'Presidencia', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugaresdereunion`
--

CREATE TABLE `lugaresdereunion` (
  `id_lugar` int(11) NOT NULL,
  `lugar` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `lugaresdereunion`
--

INSERT INTO `lugaresdereunion` (`id_lugar`, `lugar`) VALUES
(1, 'Sala de conferencias Unimark'),
(2, 'Sala de conferencias Uma-Agro'),
(3, 'Sala de conferencias Innova');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gerencia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`id_participante`, `nombres`, `apellidos`, `gerencia`, `estado`) VALUES
(1, 'Lic. Alvaro', 'Saenz Galo', 'Presidencia', b'1'),
(2, 'Ing. Ronald', 'Ruiz Bermúdez', 'Gerente Corporativo de Información y Tecnología', b'1'),
(3, 'Ing. Moises', 'Valdivia Quiróz', 'Gerente Corporativo de Operación y Logística', b'1'),
(4, 'Ing. Jorge', 'Pineda Cortez', 'Gerente Corporativo de Administración Financiera', b'1'),
(5, 'Lic. Sicinio', 'Mejía Maldonado', 'Gerente Corporativo de Gestión Humana', b'1'),
(6, 'Lic. Roberto', 'Lacayo Chávez', 'Gerente General Unimark', b'1'),
(7, 'Lic. Reynerio', 'Pastora Sánchez', 'Gerente General Uma-Agro', b'1'),
(8, 'Lic. Fabricio', 'Moreno Mairena', 'Gerente General Innova', b'1'),
(9, 'Lic. Isidro', 'Valdez Moreno', 'Gerente General Aglosa', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id_tipousuario` int(11) NOT NULL,
  `tipousuario` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `nombretipousuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id_tipousuario`, `tipousuario`, `nombretipousuario`) VALUES
(1, 'A', 'ADMINISTRADOR'),
(2, 'C', 'CORPORATIVO'),
(3, 'G', 'GERENCIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estado` bit(1) NOT NULL,
  `id_tipousuario` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `password`, `nombres`, `apellidos`, `estado`, `id_tipousuario`, `id_empresa`) VALUES
(1, 'admin', 'ece1bb7944b28e772f8de68d2de2fb2e', 'Kevin Alejandro', 'Rivera Blas', b'1', 1, 5),
(2, 'gcit', 'c66fcb53d162f4d0c451c237726a84f3', 'Ing. Ronald', 'Ruiz Bermúdez', b'1', 2, 5),
(3, 'gaglosa', 'c66fcb53d162f4d0c451c237726a84f3', 'Lic. Isidro', 'Valdez Moreno', b'1', 3, 4),
(4, 'gunimark', 'c66fcb53d162f4d0c451c237726a84f3', 'Lic. Roberto', 'Lacayo Chávez', b'1', 3, 1),
(5, 'gcol', 'c66fcb53d162f4d0c451c237726a84f3', 'Ing. Moises', 'Valdivia Quiróz', b'1', 2, 6),
(6, 'gcaf', 'c66fcb53d162f4d0c451c237726a84f3', 'Ing. Jorge', 'Pineda Cortez', b'1', 2, 7),
(7, 'presidencia', 'c66fcb53d162f4d0c451c237726a84f3', 'Lic. Alvaro', 'Saenz Galo', b'1', 2, 9),
(8, 'gcgh', 'c66fcb53d162f4d0c451c237726a84f3', 'Lic. Sicinio', 'Mejía Maldonado', b'1', 2, 8),
(9, 'gumaagro', 'c66fcb53d162f4d0c451c237726a84f3', 'Lic. Reynerio', 'Pastora Sánchez', b'1', 3, 3),
(10, 'ginnova', 'c66fcb53d162f4d0c451c237726a84f3', 'Lic. Fabricio', 'Moreno Mairena', b'1', 3, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actasguma`
--
ALTER TABLE `actasguma`
  ADD PRIMARY KEY (`id_acta`);

--
-- Indices de la tabla `actasparticipantes`
--
ALTER TABLE `actasparticipantes`
  ADD PRIMARY KEY (`id_actasparticipantes`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `lugaresdereunion`
--
ALTER TABLE `lugaresdereunion`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id_participante`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_tipousuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actasguma`
--
ALTER TABLE `actasguma`
  MODIFY `id_acta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `actasparticipantes`
--
ALTER TABLE `actasparticipantes`
  MODIFY `id_actasparticipantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `lugaresdereunion`
--
ALTER TABLE `lugaresdereunion`
  MODIFY `id_lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `participantes`
--
ALTER TABLE `participantes`
  MODIFY `id_participante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id_tipousuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
