-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2024 a las 16:57:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `qr_scans`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scans`
--

CREATE TABLE `scans` (
  `id` int(11) NOT NULL,
  `qr_data` varchar(255) NOT NULL,
  `scan_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `scans`
--

INSERT INTO `scans` (`id`, `qr_data`, `scan_time`) VALUES
(1, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-11 00:07:26'),
(2, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-11 01:56:16'),
(3, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-11 02:10:57'),
(4, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-11 02:21:48'),
(5, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-11 02:22:23'),
(6, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-11 02:23:13'),
(7, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-11 02:23:50'),
(8, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-11 02:24:43'),
(9, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-11 02:27:10'),
(10, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-11 02:28:28'),
(11, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-11 02:29:20'),
(12, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-11 02:31:36'),
(13, 'Kataleya Marisol, ID: 0511201300235', '2024-08-12 23:01:17'),
(14, 'Kataleya Marisol, ID: 0511201300235', '2024-08-12 23:13:04'),
(15, 'Nombre: Adan, Apellido: Palma, ID: 0501200704215', '2024-08-12 23:15:38'),
(16, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-13 00:21:46'),
(17, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-13 00:38:55'),
(18, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-13 02:16:00'),
(19, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-13 02:58:03'),
(20, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-13 02:59:35'),
(21, 'Kataleya Marisol, ID: 0511201300235', '2024-08-13 03:24:39'),
(22, 'Kataleya Marisol, ID: 0511201300235', '2024-08-13 03:35:15'),
(23, 'Nombre: Virginia , Apellido: Alvarez, ID: 0511200700137', '2024-08-13 03:37:11'),
(24, 'Daysi Salgado ID: 0511200700455', '2024-08-13 03:39:49'),
(25, 'Daysi Salgado 0511200700455', '2024-08-13 03:41:29'),
(26, 'Daysi Salgado 0511200700455', '2024-08-13 03:43:05'),
(27, 'Daysi Salgado 0511200700455', '2024-08-13 13:38:52'),
(28, 'Virginia Alvarez 0511200700137', '2024-08-13 14:44:03'),
(29, 'www.rnp.hn/valida/008105534', '2024-08-13 17:45:05'),
(30, 'www.rnp.hn/valida/008105534', '2024-08-13 17:45:35'),
(31, 'www.rnp.hn/valida/008105534', '2024-08-13 17:45:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `scans`
--
ALTER TABLE `scans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `scans`
--
ALTER TABLE `scans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
