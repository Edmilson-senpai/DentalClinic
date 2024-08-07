-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 04:42:02
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bddentosmile`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clientedni` int(8) NOT NULL,
  `clientecorreo` varchar(30) NOT NULL,
  `clientenombre` varchar(30) NOT NULL,
  `clienteapellido` varchar(30) NOT NULL,
  `clientetelefono` int(9) NOT NULL,
  `clientedireccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clientedni`, `clientecorreo`, `clientenombre`, `clienteapellido`, `clientetelefono`, `clientedireccion`) VALUES
(2525, '', 'jesus', 'ayudame', 25, 'porahi'),
(151569, '', 'Christopher', 'Zegarra', 123456, 'aqui pronb'),
(787878, 'correodeprueba', 'pruebaaaaaa', 'pruebiiiiis', 45678903, 'probnando'),
(3243242, 'pruebabien@gmail.com', 'sbdbdb', 'sbdgdd', 345345, 'osikfmnoskdfa sikiid'),
(55555555, 'abigail@gmail.com', 'AbigailPRUEBADOS', 'Apellido', 123456789, 'pruebadireccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlace`
--

CREATE TABLE `enlace` (
  `idenlace` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `ruta` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `enlace`
--

INSERT INTO `enlace` (`idenlace`, `descripcion`, `ruta`) VALUES
(1, 'Inserta Boleta', 'a_inserta_boleta'),
(2, 'Ejecuta Planilla', 'a_ejecuta_planilla'),
(3, 'Inserta Usuario ', 'a_inserta_usuario'),
(4, 'Inserta Producto', 'a_inserta_producto'),
(5, 'Inserta Cliente', 'a_inserta_cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historiaclinica`
--

CREATE TABLE `historiaclinica` (
  `idhistoria` int(200) NOT NULL,
  `dni_cliente_historia` varchar(8) NOT NULL,
  `nombre_cliente_historia` varchar(30) NOT NULL,
  `apellido_cliente_historia` varchar(30) NOT NULL,
  `servicio_historia` varchar(15) NOT NULL,
  `comentario_1_historia` varchar(200) NOT NULL,
  `comentario_2_historia` varchar(200) NOT NULL,
  `observacion_historia` varchar(200) NOT NULL,
  `fecha_atencion_historia` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historiaclinica`
--

INSERT INTO `historiaclinica` (`idhistoria`, `dni_cliente_historia`, `nombre_cliente_historia`, `apellido_cliente_historia`, `servicio_historia`, `comentario_1_historia`, `comentario_2_historia`, `observacion_historia`, `fecha_atencion_historia`) VALUES
(1, '2525', 'jesus', 'ayudame', 'Limpieza Dental', '342342das', '23234sad', 'aaactu', '2022-12-05'),
(2, '151569', 'Christopher', 'Zegarra', 'Ortodoncia', '234234', '234243', 'pruebaabi', '2022-12-05'),
(3, '2525', 'jesus', 'ayudame', 'Endodoncia', 'Se hizo limpieza de todos los dientes', 'paracetamol 100g. 2 veces a dia', 'asaaa', '2022-12-05'),
(4, '2525', 'jesus', 'ayudame', 'Limpieza Dental', 'pru', 'pru', 'pru', '2022-12-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'medico'),
(3, 'contabilidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_enlace`
--

CREATE TABLE `rol_enlace` (
  `idrol` int(11) NOT NULL,
  `idenlace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `idsede` varchar(5) NOT NULL,
  `nombresede` varchar(30) NOT NULL,
  `direccionsede` varchar(35) NOT NULL,
  `telefonosede` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`idsede`, `nombresede`, `direccionsede`, `telefonosede`) VALUES
('S0001', 'SEDE CENTRAL', 'AV. CENTRAL NUMERO CENTRAL 123', 968775124);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `idservicio` int(5) NOT NULL,
  `codigoservicio` varchar(5) NOT NULL,
  `nombreservicio` varchar(30) NOT NULL,
  `descripcionservicio` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`idservicio`, `codigoservicio`, `nombreservicio`, `descripcionservicio`) VALUES
(1, 'E0001', 'Endodoncia', 'Endodoncia'),
(2, 'L0001', 'Limpieza Dental', 'Limpieza Dental'),
(3, 'O0001', 'Ortodoncia', 'Ortodoncia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `idrol` int(11) UNSIGNED NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `celular` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombres`, `apellidos`, `login`, `password`, `correo`, `dni`, `idrol`, `direccion`, `celular`) VALUES
(1, 'Reyminson Grover', 'Castro Cubas', 'Rey', '123', 'rcastroc95@gmail.com', '12345678', 1, '', 0),
(2, 'Camila Alejandra', 'Perez Urrego', 'CAMALPER', '123', 'camilaperezurrego@gmail.com', '21345667', 2, '', 0),
(10, 'Lubby Amelia', 'Cubas Guevara', 'Lubby Amelia Cubas Guevara', '000', 'lubbyamelia@hotmail.com', '25799967', 1, 'Av. B Mz. Y Lt. 18 Ventanilla Alta', 998612314);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `idusuario` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  `descripcionrol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clientedni`);

--
-- Indices de la tabla `enlace`
--
ALTER TABLE `enlace`
  ADD PRIMARY KEY (`idenlace`);

--
-- Indices de la tabla `historiaclinica`
--
ALTER TABLE `historiaclinica`
  ADD PRIMARY KEY (`idhistoria`),
  ADD UNIQUE KEY `idhistoria` (`idhistoria`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `rol_enlace`
--
ALTER TABLE `rol_enlace`
  ADD PRIMARY KEY (`idrol`,`idenlace`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`idsede`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`idservicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `fk_id_rol_usuario` (`idrol`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`idusuario`,`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enlace`
--
ALTER TABLE `enlace`
  MODIFY `idenlace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `historiaclinica`
--
ALTER TABLE `historiaclinica`
  MODIFY `idhistoria` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `idservicio` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_id_rol_usuario` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
