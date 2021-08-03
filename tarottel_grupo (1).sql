-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-08-2021 a las 19:49:23
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarottel_grupo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(11) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `nombre_admin` varchar(60) NOT NULL,
  `clave` text NOT NULL,
  `email_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombre_completo`, `nombre_admin`, `clave`, `email_admin`) VALUES
(1, 'Super Administrador', 'Administrador', '2a2e9a58102784ca18e2605a4e727b5f', 'administrador@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_completo`, `nombre_usuario`, `email_cliente`, `clave`) VALUES
(1, 'x', 'x', 'x@xx.xxx', '9dd4e461268c8034f5c8564e155c67a6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(7) NOT NULL,
  `nombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `depto` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `asunto` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `nombre`, `email`, `depto`, `asunto`, `descripcion`, `fecha`, `estado`) VALUES
(42, 'migelin', 'torers', 'gerencia', 'REPARACION DE LACER', 'LACER DKSDK;L', '2022-08-11', 'status'),
(45, 'robert', 'rober44@gmail.com', 'ventas', 'repacion', 'invrntada', '2021-07-13', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_usuarios`
--

CREATE TABLE `registros_usuarios` (
  `num_usuario` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `fecha_reg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registros_usuarios`
--

INSERT INTO `registros_usuarios` (`num_usuario`, `nombre`, `email`, `tipo`, `pass`, `fecha_reg`) VALUES
(1, 'zzzzzzzz', 'zzzz@hoo', 'zzzzz', '', '19/07/21'),
(4, 'lksdkdsls', 'lksdlkdl@jsj', 'lksk', 'lklk', '19/07/21'),
(6, 'm,znmnxzm', 'nmnmq@g', 'm,nmmn', 'nmnmmmn', '19/07/21'),
(7, 'uno', 'dos@gmail.com', 'tres', 'cuatro', '19/07/21'),
(9, 'kjsljkljjkk', 'jkjkjkjkl@h', 'jkljkjkjk', 'kjlkjjkl', '19/07/21'),
(11, 'akklskl', 'klkkkl@com', 'kklllk', 'lkklklkl', '19/07/21'),
(12, 'hol', 'hola@l', 'hola', 'hola', '19/07/21'),
(14, 'CRYO', 'GRUPO@CRYO', 'CRYO', 'CRIO', '20/07/21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuarios`
--

CREATE TABLE `rol_usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rol_usuarios`
--

INSERT INTO `rol_usuarios` (`id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `fecha` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `serie` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_ticket` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `asunto` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish2_ci NOT NULL,
  `solucion` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `fecha`, `serie`, `estado_ticket`, `nombre_usuario`, `email_cliente`, `departamento`, `asunto`, `mensaje`, `solucion`) VALUES
(1, '', 'TK58N1', 'Pendiente', 'x', 'x@x.xx', 'Ventas', 'x', 'x', ''),
(2, '07/16/2021', 'TK59N2', 'Pendiente', 'ismael', 'uinia@gmail.com', 'Software', 'no jala', 'no jala la pc', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_persona`
--

CREATE TABLE `t_persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_persona`
--

INSERT INTO `t_persona` (`id`, `nombre`, `apellido`, `email`, `telefono`) VALUES
(6, 'Miriam', 'sanchez', 'msanchez@hotmail.com', '5575859658'),
(7, 'Miguels', 'Vansini', 'miguel12@hotmail.com', '5517895464'),
(21, 'Norma s', 'Yasein', 'Normyas@outlook.com', '5689702478'),
(22, 'test', 'test', 'test@test.com', '1234567898'),
(23, 'Mario ', 'Castañeda', 'Mcastañeda@gmail.com', '5546378388'),
(24, 'juan', 'juan', 'juan', '5545645644');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `estado` varchar(12) NOT NULL,
  `time_login` varchar(20) NOT NULL,
  `time_logout` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contrasena`, `email`, `rol_id`, `estado`, `time_login`, `time_logout`) VALUES
(1, 'ggg', 'ggg', 'aa@gmail.com', 1, 'desconectado', '2017-Aug-Thu 4:25:28', '2017-Aug-Thu 4:26:03'),
(14, 'Alejandra', '12345', 'akdjjd@gmail.com', NULL, 'desconectado', '2017-Aug-Thu 4:25:35', '2017-Aug-Thu 4:25:56'),
(15, 'Juan', 'juan123', 'juan@hotmail.com', NULL, 'desconectado', '2017-Jul-Thu 17:03:3', '2017-Jul-Thu 17:09:1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `correo` (`email_admin`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id_num` (`email_cliente`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros_usuarios`
--
ALTER TABLE `registros_usuarios`
  ADD PRIMARY KEY (`num_usuario`),
  ADD UNIQUE KEY `nombre_completo` (`nombre`);

--
-- Indices de la tabla `rol_usuarios`
--
ALTER TABLE `rol_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serie` (`serie`);

--
-- Indices de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `registros_usuarios`
--
ALTER TABLE `registros_usuarios`
  MODIFY `num_usuario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `rol_usuarios`
--
ALTER TABLE `rol_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
