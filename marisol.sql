-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 11:58 PM
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
-- Database: `marisol`
--

-- --------------------------------------------------------

--
-- Table structure for table `detallepedido`
--

CREATE TABLE `detallepedido` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentotipo`
--

CREATE TABLE `documentotipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documentotipo`
--

INSERT INTO `documentotipo` (`id`, `nombre`) VALUES
(1, 'DNI'),
(2, 'PASAPORTE');

-- --------------------------------------------------------

--
-- Table structure for table `metodoenvio`
--

CREATE TABLE `metodoenvio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metodoenvio`
--

INSERT INTO `metodoenvio` (`id`, `nombre`) VALUES
(1, 'RECOJO EN TIENDA'),
(2, 'ENTREGA A DOMICILIO');

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `metodoenvio_id` int(11) NOT NULL,
  `direccion_entrega` varchar(255) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `hora_entrega` time NOT NULL,
  `responsable_dni` varchar(255) NOT NULL,
  `responsable_nombre` varchar(255) NOT NULL,
  `numero_tarjeta_pago` varchar(255) NOT NULL,
  `total_pago` decimal(10,2) NOT NULL,
  `codigo_recojo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `proveedor` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `imagen`, `descripcion`, `proveedor`, `precio`, `stock`) VALUES
(1, 'Carne de Ternera', 'CARNES, AVES Y PESCADOS', 'bisteck.png', 'Bisteck de Tapa x Kg', 'San Fernando', 7.90, 15),
(2, 'Guiso de Cerdo x Kg', 'CARNES, AVES Y PESCADOS', 'guiso_cerdo.png', 'Esto es un chanchito', 'San Fernando', 16.90, 15),
(3, 'Arandano congelado 500 gr.', 'CONGELADOS', 'arandano_congelado.jpg', 'Arandanos congelados sin azucares', 'Feat', 6.50, 15),
(4, 'Champiñones 500gr.', 'CONGELADOS', 'champiñones_congelados.jpg', 'Champiñones congelados sin sal', 'Feat', 6.50, 15),
(5, 'Crema de Leche', 'LACTEOS', 'crema_leche.png', 'Esto es una crema', 'Gloria', 8.90, 15),
(6, 'Queso Fresco', 'LACTEOS', 'queso_fresco.png', 'Queso fresco de 150 gramos', 'Bonle', 34.50, 15),
(7, 'Manzana Golden x Kg.', 'FRUTAS Y VERDURAS', 'manzana_golden.jpg', 'Manzana golden verde', 'Pronasel', 5.00, 15),
(8, 'Platano seda 5Und.', 'FRUTAS Y VERDURAS', 'platano_seda.jpg', 'Platano seda 5 unidades', 'Pronasel', 3.00, 15),
(9, 'Pan francés', 'PANADERIA Y PASTELERIA', 'pan_frances.jpg', 'Pan frances grande recien horneado', 'Repaspan', 6.50, 15),
(10, 'Flan 150gr.', 'PANADERIA Y PASTELERIA', 'flan.jpg', 'Rebanada de flan de vainilla de 150 gramos', 'Repaspan', 5.00, 15),
(11, 'Sixpack pilsen 355ml.', 'BEBIDAS', 'cerveza_pilsen.jpg', 'Cerveza pilsen en lata Sixpack 355ml', 'Pilsen', 21.50, 15),
(12, 'Gaseosa Incakola 500ml.', 'BEBIDAS', 'incakola.jpg', 'Gaseosa Incakola sabor original en botella 500ml', 'Inca kola', 4.00, 15),
(13, 'Jabon Protex Pack x3', 'CUIDADO PERSONAL', 'jabon.png', 'Pack x3 Jabón Antibacterial Nutri Protect Barra 110 gramos', 'Protex', 11.40, 15),
(14, 'Gel Antibacterial 1L', 'CUIDADO PERSONAL', 'gel.png', 'Gel Antibacterial Instan clean Sin Fragancia', 'Instan clean', 20.50, 15),
(15, 'Jabon Bolivar 190 gr.', 'LIMPIEZA', 'jabon_bolivar.png', 'Jab[on en Barra BOLÍVAR Floral Paquete 190g', 'Bolivar', 3.50, 15),
(16, 'Escoba VIRUTEX', 'LIMPIEZA', 'escoba.png', 'Escoba VIRUTEX La Poderosa', 'Virutex', 15.90, 15),
(17, 'Cebolla x Kg.', 'FRUTAS Y VERDURAS', 'cebolla.jpg', 'Cebolla morada mediana seca', 'Sierralta', 3.00, 13),
(18, 'cebolla2', 'FRUTAS Y VERDURAS', 'cebolla.jpg', 'Cebolla2 Descripcion', 'Cebollin', 3.00, 8),
(19, 'cebolla3', 'FRUTAS Y VERDURAS', 'cebolla.jpg', 'Cebolla Descricion 3', 'Cebollin 3', 3.00, 6);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `documento_tipo` int(11) DEFAULT NULL,
  `documento_numero` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `password`, `documento_tipo`, `documento_numero`, `telefono`) VALUES
(1, 'Alvaro', 'Fernandez', 'afernandez@gmail.com', '12345', NULL, NULL, NULL),
(2, 'Admin', 'Admin', 'admin@gmail.com', 'admin', NULL, NULL, NULL),
(3, 'Juan', 'Perez', 'juan@gmail.com', 'juan', NULL, NULL, NULL),
(4, 'Janitza', 'Caballero', 'janitza@gmail.com', 'jani', NULL, NULL, NULL),
(5, 'Ian', 'Chicmana', 'ian@gmail.com', 'ian123', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indexes for table `documentotipo`
--
ALTER TABLE `documentotipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metodoenvio`
--
ALTER TABLE `metodoenvio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `metodoenvio_id` (`metodoenvio_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documento_tipo_foreign` (`documento_tipo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `detallepedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `detallepedido_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`metodoenvio_id`) REFERENCES `metodoenvio` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `documento_tipo_foreign` FOREIGN KEY (`documento_tipo`) REFERENCES `documentotipo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
