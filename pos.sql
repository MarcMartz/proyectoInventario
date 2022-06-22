-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:33065
-- Generation Time: Jun 22, 2022 at 05:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Terror', '2022-06-15 12:06:12'),
(2, 'Manga', '2022-06-15 12:06:12'),
(3, 'Comics', '2022-06-15 12:06:12'),
(4, 'Juvenil', '2022-06-15 12:06:12'),
(5, 'Historia', '2022-06-15 12:06:12'),
(9, 'Prueba', '2022-06-15 12:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Juan Villegas', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 6, '2022-02-14 18:59:47', '2022-06-15 12:06:13'),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 7, '2022-02-21 16:21:57', '2022-06-15 12:06:13'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 0, '0000-00-00 00:00:00', '2022-06-15 12:06:13'),
(7, 'Jhon Jairo Trujillo', 1246757, 'jairo@gmail.com', '(321) 648-3983', 'calle falsa 123', '1992-03-12', 11, '2022-02-21 12:01:15', '2022-06-15 12:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'El resplandor', 'vistas/img/productos/books/1.jpeg', 20, 50000, 70000, 0, '2022-06-15 12:24:35'),
(2, 1, '102', 'Dracula', 'vistas/img/productos/books/2.jpeg', 20, 45000, 63000, 0, '2022-06-15 12:06:13'),
(3, 2, '103', 'One Piece', 'vistas/img/productos/books/3.jpeg', 20, 80000, 120000, 0, '2022-06-15 12:06:13'),
(4, 2, '104', 'Bleach ', 'vistas/img/productos/books/4.jpeg', 20, 40000, 56000, 0, '2022-06-15 12:06:13'),
(5, 3, '105', 'Los vengadores ', 'vistas/img/productos/books/5.jpeg', 20, 154000, 215600, 2, '2022-06-15 12:06:13'),
(6, 3, '106', 'Superman vol3 ', 'vistas/img/productos/books/6.jpeg', 20, 110000, 154000, 2, '2022-06-15 12:06:13'),
(7, 4, '107', 'Bajo la misma estrella ', 'vistas/img/productos/books/7.jpeg', 20, 154000, 215600, 0, '2022-06-15 12:06:13'),
(8, 4, '108', 'Narnia ', 'vistas/img/productos/books/8.jpeg', 20, 154300, 225006, 0, '2022-06-15 12:06:13'),
(9, 5, '109', 'Edad Media ', 'vistas/img/productos/books/9.jpeg', 20, 260000, 360040, 0, '2022-06-15 12:06:13'),
(10, 5, '110', 'La segunda Guerra mundial', 'vistas/img/productos/books/10.jpeg', 20, 221000, 309004, 0, '2022-06-15 12:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/239.jpg', 1, '2022-06-15 08:13:28', '2022-06-15 13:13:28'),
(63, 'Juan Daza', 'sebastian', '$2a$07$asxx54ahjppf45sd87a5auoeb.pJwJlPwrScOm0uulP8C6j5yDaI6', 'Vendedor', 'vistas/img/usuarios/sebastian/488.jpg', 1, '2022-02-21 16:10:43', '2022-06-15 12:09:48'),
(65, 'Faiver  Méndez', 'faiver', '$2a$07$asxx54ahjppf45sd87a5auVs4qGHgAwVdcYHcA//Cr7IT8gSbEDYa', 'Especial', 'vistas/img/usuarios/faiver/866.jpg', 1, '2022-06-15 08:13:21', '2022-06-15 13:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(17, 10001, 3, 1, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"4\",\"stock\":\"4\",\"precio\":\"6300\",\"total\":\"25200\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"4200\",\"total\":\"4200\"}]', 5814, 30600, 36414, 'Efectivo', '2022-06-15 12:06:13'),
(21, 10002, 7, 1, '[{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"4\",\"stock\":\"16\",\"precio\":\"2156\",\"total\":\"8624\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"4312\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"4200\",\"total\":\"21000\"}]', 6447.84, 33936, 40383.8, 'Efectivo', '2022-06-15 12:06:13'),
(22, 10003, 4, 1, '[{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"1540\",\"total\":\"3080\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"33\",\"descripcion\":\"Arnes de seguridad\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"2450\",\"total\":\"7350\"},{\"id\":\"36\",\"descripcion\":\"Planta Electrica Diesel 6 Kva\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"4900\",\"total\":\"4900\"}]', 3604.3, 18970, 22574.3, 'Efectivo', '2022-06-15 12:06:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
