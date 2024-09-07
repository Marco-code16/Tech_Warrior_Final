-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2024 at 06:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techwarrior`
--

-- --------------------------------------------------------

--
-- Table structure for table `administradores`
--

CREATE TABLE `administradores` (
  `id_administrador` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `clave` varchar(10) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administradores`
--

INSERT INTO `administradores` (`id_administrador`, `nombre`, `apellido`, `telefono`, `direccion`, `correo`, `clave`, `cargo`) VALUES
(1, 'Andres Mauricio', 'Gomez Murcia', '3022489328', 'Carrera 3 # 1c-92', 'andresgomezm918@gmail.com', 'Andres123', 'Bases de Datos'),
(2, 'Christian David', 'Lezcano Mendieta', '3102866494', 'Carrera 3 # 1c-92', 'cdavidl@gmail.com', 'Christian1', 'Project Manager'),
(3, 'Marco Abel', 'Prieto Silva', '3102807048', 'Carrera 3 # 1c-92', 'mabelp@gmail.com', 'Marco123', 'Front-end'),
(4, 'Cristian David', 'Rodríguez Moreno', '3102927038', 'Carrera 3 # 1c-92', 'cdavidr@gmail.com', 'Cristian12', 'Back-End');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'pcGamer'),
(2, 'tecladoMouse'),
(3, 'perifericos');

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_administrador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `cantidad`, `id_producto`, `id_administrador`) VALUES
(1, 50, 1, 1),
(2, 30, 2, 2),
(3, 20, 3, 3),
(4, 40, 4, 4),
(5, 10, 5, 1),
(6, 25, 6, 2),
(7, 35, 7, 3),
(8, 15, 8, 4),
(9, 45, 9, 1),
(10, 5, 10, 2),
(11, 50, 11, 1),
(12, 30, 12, 2),
(13, 20, 13, 3),
(14, 40, 14, 4),
(15, 10, 15, 1),
(16, 25, 16, 2),
(17, 35, 17, 3),
(18, 15, 18, 4),
(19, 45, 19, 1),
(20, 5, 20, 2),
(21, 55, 21, 1),
(22, 35, 22, 2),
(23, 25, 23, 3),
(24, 45, 24, 4),
(25, 15, 25, 1),
(26, 30, 26, 2),
(27, 40, 27, 3),
(28, 20, 28, 4),
(29, 50, 29, 1),
(30, 10, 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ordenes`
--

CREATE TABLE `ordenes` (
  `id_orden` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_administrador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `id_categoria`, `id_administrador`) VALUES
(1, 'PC Gamer Alpha', 'PC de alta gama con procesador Intel i9, 32GB RAM, y GPU RTX 3080', 2500000.00, 1, 1),
(2, 'PC Gamer Beta', 'PC de gama media con procesador Ryzen 5, 16GB RAM, y GPU GTX 1660', 12000000.00, 1, 2),
(3, 'PC Gamer Gamma', 'PC de alta gama con procesador Ryzen 7, 32GB RAM, y GPU RTX 3070', 2200000.00, 1, 3),
(4, 'PC Gamer Delta', 'PC de gama media con procesador Intel i5, 16GB RAM, y GPU GTX 1650', 1000000.00, 1, 4),
(5, 'PC Gamer Epsilon', 'PC de gama alta con procesador Intel i7, 32GB RAM, y GPU RTX 3060', 2000000.00, 1, 1),
(6, 'PC Gamer Zeta', 'PC de entrada con procesador Ryzen 3, 8GB RAM, y GPU RX 570', 1800000.00, 1, 2),
(7, 'PC Gamer Eta', 'PC de alta gama con procesador Intel i9, 64GB RAM, y GPU RTX 3090', 3000000.00, 1, 3),
(8, 'PC Gamer Theta', 'PC de gama media con procesador Ryzen 5, 16GB RAM, y GPU RTX 2060', 1500000.00, 1, 4),
(9, 'PC Gamer Iota', 'PC de entrada con procesador Intel i3, 8GB RAM, y GPU GTX 1050', 2600000.00, 1, 1),
(10, 'PC Gamer Kappa', 'PC de gama alta con procesador Ryzen 9, 64GB RAM, y GPU RTX 3080 Ti', 2800000.00, 1, 2),
(11, 'Teclado Mecánico Corsair', 'Teclado mecánico con retroiluminación RGB y switches Cherry MX Red', 120000.00, 2, 1),
(12, 'Mouse Logitech G502', 'Mouse gamer con sensor HERO 25K, 11 botones programables y peso ajustable', 80000.00, 2, 2),
(13, 'Teclado Razer Huntsman', 'Teclado óptico con switches Razer y retroiluminación RGB', 150000.00, 2, 3),
(14, 'Mouse Razer DeathAdder', 'Mouse gamer con sensor óptico y diseño ergonómico', 70000.00, 2, 4),
(15, 'Teclado HyperX Alloy FPS', 'Teclado mecánico con switches Cherry MX Blue y estructura de acero', 100000.00, 2, 1),
(16, 'Mouse SteelSeries Rival 600', 'Mouse gamer con sensor dual TrueMove3+ y peso ajustable', 90000.00, 2, 2),
(17, 'Teclado Logitech G Pro X', 'Teclado mecánico con switches intercambiables y retroiluminación RGB', 130000.00, 2, 3),
(18, 'Mouse Corsair Dark Core', 'Mouse gamer inalámbrico con sensor óptico y retroiluminación RGB', 100000.00, 2, 4),
(19, 'Teclado Roccat Vulcan', 'Teclado mecánico con switches Titan y retroiluminación AIMO', 140000.00, 2, 1),
(20, 'Mouse Glorious Model O', 'Mouse gamer ultraligero con sensor óptico y cable flexible', 50000.00, 2, 2),
(21, 'Teclado Logitech G Pro X', 'Teclado mecánico con retroiluminación RGB', 130000.00, 3, 1),
(22, 'Ratón Razer DeathAdder V2', 'Ratón con sensibilidad de 20,000 DPI y 7 botones programables', 80000.00, 3, 1),
(23, 'Auriculares Corsair HS70 Wireless', 'Auriculares inalámbricos con sonido envolvente 7.1 y micrófono desmontable', 100000.00, 3, 2),
(24, 'Monitor ASUS ROG Swift PG259QN', 'Monitor 1440p con frecuencia de 360Hz y G-Sync', 100000.00, 3, 2),
(25, 'Silla Secretlab Omega 2020', 'Silla ergonómica con material de PU y soporte avanzado', 400000.00, 3, 3),
(26, 'Mousepad SteelSeries QcK Prism', 'Mousepad con iluminación RGB y superficie textil', 60000.00, 3, 3),
(27, 'Webcam Logitech C920', 'Webcam HD 1080p con micrófono integrado', 70000.00, 3, 1),
(28, 'Teclado mecánico Razer BlackWidow', 'Teclado mecánico con switches Razer Green y retroiluminación', 150000.00, 3, 2),
(29, 'Auriculares HyperX Cloud II', 'Auriculares con sonido envolvente 7.1 y almohadillas de memoria', 90000.00, 3, 2),
(30, 'Monitor Dell Alienware AW2521H', 'Monitor 360Hz con tecnología G-Sync y panel IPS', 120000.00, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `clave` varchar(10) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id_administrador`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_administrador` (`id_administrador`);

--
-- Indexes for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_administrador` (`id_administrador`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`id_administrador`) REFERENCES `administradores` (`id_administrador`);

--
-- Constraints for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `ordenes_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_administrador`) REFERENCES `administradores` (`id_administrador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
