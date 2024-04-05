-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-04-2024 a las 21:57:40
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `product_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Pepsi', 'Bebida', '2024-04-02 20:05:49', '2024-04-02 20:05:49'),
(3, 'Caucho', 'Caucho de carro', '2024-04-05 16:34:58', '2024-04-05 16:34:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(4, 'Jesus', '$2b$10$1F7CudjaaEMVJjoDcvYeq.4sGHBWGlwlTIHkEoGV0sRDn4zn2KAw.', '2024-04-02 21:31:17', '2024-04-02 21:31:17'),
(7, 'Adro', '$2b$10$oS7HfbT3SAYqVGVUWDPsVemy3FwbJ.0WhJa1I2EqhAXKkC302tRZ.', '2024-04-03 14:22:49', '2024-04-03 14:22:49'),
(8, 'roberto', '$2b$10$y0tidjaRqbqSzAWksbGeReMYliXIUsJhgTbSNxGgkwxRMCffLmP9e', '2024-04-04 19:02:44', '2024-04-04 19:02:44'),
(9, 'matlux', '$2b$10$Koy0yZP9G1Fm5ft4sBmbROVPRDCi69QCzQQvfxONPhuldiTszsNVm', '2024-04-04 19:31:56', '2024-04-04 19:31:56'),
(11, 'luisD', '$2b$10$.ViIsXbEFXlcvHHmO7V4b.MM6B5ypXF9S8yGO9gyUnSp1y2f1LxS.', '2024-04-04 20:14:49', '2024-04-04 20:14:49'),
(12, 'maria', '$2b$10$QycWJX8UeNvBgcp3n6WGkuxJTmwMPXgbklK7wRbA/szC8Yr9/E3nS', '2024-04-04 20:18:10', '2024-04-04 20:18:10'),
(13, 'Pedro', '$2b$10$S/P6GYkzxTWWYS7IotJkKOZ/5DJyN3p4jTLKy7cQGRfoUMezvLsrW', '2024-04-04 20:18:41', '2024-04-04 20:18:41'),
(14, 'rafael', '$2b$10$2gGI9xBSt9uv1grKVuf9je6uPptq/ljY9/k7cEMQHxlon8TdpZzpK', '2024-04-05 15:59:30', '2024-04-05 15:59:30'),
(15, 'yoha', '$2b$10$iVoCoCflGnup9zC8f/7sGOVnoxNanlnVPSUs2jrOcfL1xmhqhztvy', '2024-04-05 18:46:13', '2024-04-05 18:46:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
