-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 16:37:18
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `melomania`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `artista` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ano` int(11) NOT NULL,
  `descripcion` varchar(200) CHARACTER SET utf8 NOT NULL,
  `tipo` varchar(11) CHARACTER SET utf8 NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`id`, `nombre`, `artista`, `ano`, `descripcion`, `tipo`, `precio`, `imagen`, `cantidad`) VALUES
(1, 'Taylor Swift', 'Taylor Swift', 2006, 'Primer album de estudio de Taylor Swift,\r\nlanzado el 24 de octubre de 2006 con el sello discografico de Big Machine Records', 'cd', 250, 'tscd.jpeg', 80),
(2, 'Taylor Swift', 'Taylor Swift', 2006, 'Primer album de estudio de Taylor Swift,\r\nlanzado el 24 de octubre de 2006 con el sello', 'vinil', 1200, 'tsv.png', 0),
(3, 'Fearless (Taylor’s Version)', 'Taylor Swift', 2021, 'Fearless (Taylor\'s Version) es el primer álbum regrabado de la cantante y compositora estadounidense Taylor Swift, lanzado el 9 de abril de 2021 por Republic Records. ', 'cd', 220, 'tvf.jpeg', 0),
(4, 'Fearless (Taylor’s Version)', 'Taylor Swift', 2021, 'Fearless (Taylor\'s Version) es el primer álbum regrabado de la cantante y compositora estadounidense Taylor Swift, lanzado el 9 de abril de 2021 por Republic Records. ', 'vinil', 1570, 'tvfv.png', 0),
(5, 'Fearless ', 'Taylor Swift', 2008, ' Fearless es el segundo álbum de estudio de la cantante y compositora estadounidense Taylor Swift, fue lanzado el 11 de noviembre de 2008 por el sello discográfico Big Machine Records.', 'cd', 300, 'tsfcd.png', 100),
(6, 'Fearless ', 'Taylor Swift', 2008, ' Fearless es el segundo álbum de estudio de la cantante y compositora estadounidense Taylor Swift, fue lanzado el 11 de noviembre de 2008 por el sello discográfico Big Machine Records.', 'vinil', 1120, 'tsfv.png', 60),
(7, 'Speak Now (Taylor\'s Version)', 'Taylor Swift', 2023, 'Speak Now (Taylor\'s Version) es el tercer álbum regrabado de la cantautora estadounidense Taylor Swift, lanzado el 7 de julio de 2023 por Republic Records. ', 'cd', 340, 'sn.avif', 0),
(8, 'Speak Now (Taylor\'s Version)', 'Taylor Swift', 2023, 'Speak Now (Taylor\'s Version) es el tercer álbum regrabado de la cantautora estadounidense Taylor Swift, lanzado el 7 de julio de 2023 por Republic Records. ', 'vinil', 2100, 'tvsnv.png', 50),
(9, 'Speak Now', 'Taylor Swift', 2010, 'Speak Now  es el tercer álbum de estudio de la cantante estadounidense Taylor Swift, fue publicado el 25 de octubre de 2010 por el sello discográfico Big Machine Records. ', 'cd', 240, 'sncd.jpeg', 70),
(10, 'Speak Now', 'Taylor Swift', 2010, 'Speak Now es el tercer álbum de estudio de la cantante estadounidense Taylor Swift, fue publicado el 25 de octubre de 2010 por el sello discográfico Big Machine Records. ', 'vinil', 1100, 'spv.jpeg', 50),
(11, 'Red (Taylor’s Version)', 'Taylor Swift', 2021, 'Red (Taylor\'s Version) es el segundo álbum regrabado de la cantante y compositora estadounidense Taylor Swift, lanzado el 12 de noviembre de 2021 por Republic Records. ', 'cd', 320, 'tsrtvcd.jpg', 80),
(12, 'Red', 'Taylor Swift', 2012, 'Red es el cuarto álbum de estudio de la cantante y compositora estadounidense Taylor Swift. Se lanzó el 22 de octubre de 2012 a través de Big Machine Records.', 'cd', 250, 'tsrcd.png', 0),
(13, 'Red', 'Taylor Swift', 2012, 'Red es el cuarto álbum de estudio de la cantante y compositora estadounidense Taylor Swift. Se lanzó el 22 de octubre de 2012 a través de Big Machine Records.', 'vinil', 2300, 'tsrv.png', 0),
(14, 'Red (Taylor’s Version)', 'Taylor Swift', 2021, 'Red (Taylor\'s Version) es el segundo álbum regrabado de la cantante y compositora estadounidense Taylor Swift, lanzado el 12 de noviembre de 2021 por Republic Records. ', 'vinil', 2540, 'tsrtvv.png', 0),
(15, '1989', 'Taylor Swift', 2014, '1989 es el quinto álbum de estudio de la cantante y compositora estadounidense Taylor Swift, lanzado el 27 de octubre de 2014 a través del sello discográfico Big Machine Records. ', 'cd', 160, '1989cd.jpeg', 80),
(16, '1989', 'Taylor Swift', 2014, '1989 es el quinto álbum de estudio de la cantante y compositora estadounidense Taylor Swift, lanzado el 27 de octubre de 2014 a través del sello discográfico Big Machine Records. ', 'vinil', 1600, '1989v.png', 80),
(17, '1989 (Taylor’s Version)', 'Taylor Swift', 2023, '1989 (Taylor\'s Version) es el cuarto álbum regrabado de la cantante y compositora estadounidense Taylor Swift. Es una regrabación del quinto álbum de estudio de Swift, 1989 (2014), y fue lanzado el 27', 'vinil', 1800, '1989tvv.webp', 100),
(18, '1989 (Taylor’s Version)', 'Taylor Swift', 2023, '1989 (Taylor\'s Version) es el cuarto álbum regrabado de la cantante y compositora estadounidense Taylor Swift. Es una regrabación del quinto álbum de estudio de Swift, 1989 (2014), y fue lanzado el 27', 'cd', 1800, '1989tvcd.webp', 100),
(19, 'Reputation', 'Taylor Swift', 2017, 'Reputation es el sexto álbum de estudio de la cantante y compositora estadounidense Taylor Swift. Fue lanzado el 10 de noviembre de 2017 como su último álbum con Big Machine Records. ', 'vinil', 1700, 'tsrepv.png', 50),
(20, 'Reputation', 'Taylor Swift', 2017, 'Reputation es el sexto álbum de estudio de la cantante y compositora estadounidense Taylor Swift. Fue lanzado el 10 de noviembre de 2017 como su último álbum con Big Machine Records. ', 'cd', 320, 'tsrcd.webp', 120),
(21, 'Lover', 'Taylor Swift', 2020, 'Lover es el séptimo álbum de estudio de la cantante y compositora estadounidense Taylor Swift, lanzado el 23 de agosto de 2019 por Republic Records.', 'vinil', 1700, 'tslv.webp', 50),
(22, 'Lover', 'Taylor Swift', 2020, 'Lover es el séptimo álbum de estudio de la cantante y compositora estadounidense Taylor Swift, lanzado el 23 de agosto de 2019 por Republic Records.', 'cd', 320, 'lover.webp', 120),
(23, 'Folklore', 'Taylor Swift', 2020, 'Folklore  es el octavo álbum de estudio de la cantante estadounidense Taylor Swift. Fue un álbum sorpresa, lanzado a través de Republic Records el 24 de julio de 2020.', 'vinil', 1700, 'tsfkv.png', 50),
(24, 'Folklore', 'Taylor Swift', 2020, 'Folklore  es el octavo álbum de estudio de la cantante estadounidense Taylor Swift. Fue un álbum sorpresa, lanzado a través de Republic Records el 24 de julio de 2020.', 'cd', 320, 'tsfkcd.jpg', 120),
(25, 'Evermore', 'Taylor Swift', 2020, 'Evermore es el noveno álbum de estudio de la cantante y compositora estadounidense Taylor Swift. Fue un álbum sorpresa lanzado el 11 de diciembre de 2020 a través de Republic Records.', 'vinil', 1560, 'evv.png', 100),
(26, 'Evermore', 'Taylor Swift', 2020, 'Evermore es el noveno álbum de estudio de la cantante y compositora estadounidense Taylor Swift. Fue un álbum sorpresa lanzado el 11 de diciembre de 2020 a través de Republic Records.', 'cd', 260, 'ever.jpeg', 100),
(27, 'Midnights ', 'Taylor Swift', 2022, 'Midnights es el décimo álbum de estudio de la cantante y compositora estadounidense Taylor Swift, lanzado el 21 de octubre de 2022 por Republic Records.', 'vinil', 1560, 'vimm.png', 100),
(28, 'Midnights ', 'Taylor Swift', 2022, 'Midnights es el décimo álbum de estudio de la cantante y compositora estadounidense Taylor Swift, lanzado el 21 de octubre de 2022 por Republic Records.', 'cd', 260, 'fear.avif', 100),
(29, 'The Tortured Poets Department', 'Taylor Swift', 2024, 'The Tortured Poets Department es el undécimo álbum de estudio de la cantautora estadounidense Taylor Swift, lanzado el 19 de abril de 2024 a través de Republic Records.', 'cd', 450, 'cdttpdtm.avif', 230),
(30, 'The Tortured Poets Department', 'Taylor Swift', 2024, 'The Tortured Poets Department es el undécimo álbum de estudio de la cantautora estadounidense Taylor Swift, lanzado el 19 de abril de 2024 a través de Republic Records.', 'vinil', 2300, 'ttpdv.png', 250),
(31, 'Harry Styles', 'Harry Styles', 2017, 'Harry Styles es el primer álbum de estudio en solitario del cantante y compositor inglés Harry Styles. El álbum fue lanzado el 12 de mayo de 2017, a través de Erskine y Columbia Records.', 'cd', 140, 'hscd.png', 200),
(32, 'Harry Styles', 'Harry Styles', 2017, 'Harry Styles es el primer álbum de estudio en solitario del cantante y compositor inglés Harry Styles. El álbum fue lanzado el 12 de mayo de 2017, a través de Erskine y Columbia Records.', 'vinil', 1300, 'hsv.png', 300),
(33, 'Fine Line', 'Harry Styles', 2019, 'Fine Line es el segundo álbum de estudio del cantante y compositor inglés Harry Styles, lanzado el 13 de diciembre de 2019 por Erskine y Columbia Records.', 'cd', 140, 'cdfl.avif', 200),
(34, 'Fine Line', 'Harry Styles', 2019, 'Fine Line es el segundo álbum de estudio del cantante y compositor inglés Harry Styles, lanzado el 13 de diciembre de 2019 por Erskine y Columbia Records.', 'vinil', 1300, 'vflel.png', 300),
(35, 'Harry\'s House', 'Harry Styles', 2022, 'Harry\'s House es el tercer álbum de estudio del cantante y compositor inglés Harry Styles, lanzado el 20 de mayo de 2022 por Erskine y Columbia Records. ', 'cd', 140, 'cdhh.avif', 200),
(36, 'Harry\'s House', 'Harry Styles', 2022, 'Harry\'s House es el tercer álbum de estudio del cantante y compositor inglés Harry Styles, lanzado el 20 de mayo de 2022 por Erskine y Columbia Records. ', 'vinil', 1300, 'hhv.png', 300),
(37, 'Walls', 'Louis Tomlinson', 2020, 'Walls es el primer álbum de estudio en solitario del cantante y compositor inglés Louis Tomlinson, lanzado el 31 de enero de 2020 a través de Syco Music y Arista Records.', 'cd', 140, 'viw.avif', 200),
(38, 'Walls', 'Louis Tomlinson', 2020, 'Walls es el primer álbum de estudio en solitario del cantante y compositor inglés Louis Tomlinson, lanzado el 31 de enero de 2020 a través de Syco Music y Arista Records.', 'vinil', 1300, 'ltwv.png', 300),
(39, 'Faith in the Future', 'Louis Tomlinson', 2022, 'Faith in the Future es el segundo álbum de estudio del cantautor inglés Louis Tomlinson. Fue lanzado el 11 de noviembre de 2022 de forma independiente a través de BMG. ', 'cd', 230, 'ltffcd.jpeg', 200),
(40, 'Faith in the Future', 'Louis Tomlinson', 2022, 'Faith in the Future es el segundo álbum de estudio del cantautor inglés Louis Tomlinson. Fue lanzado el 11 de noviembre de 2022 de forma independiente a través de BMG. ', 'vinil', 1300, 'ltffv.webp', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `idusuario`, `idproducto`, `cantidad`) VALUES
(0, 2, 30, 1),
(0, 1, 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'mel', '$2y$10$6IuqhjsQEC6CP89T8EgnPOHAeKTByF.lpmMYrSPnvEfRAepQICJ0e', '2024-06-09 01:30:41'),
(2, 'adri', '$2y$10$KNawI7L/BUmeBvATFdlJn.W.CuR4rfsmz0zKdE4xo5767tf8/vH9a', '2024-06-11 02:34:01'),
(4, 'cas', '$2y$10$U3tLH0LaAQOOnO7gn0WD.Op6SXqyQlq4YuNzt7bedqSWOZ5I4z4IS', '2024-06-11 02:38:19'),
(7, 'melany', '$2y$10$Xd.y26KDTXQbi7AUAnvnF.4EcSM4h4QhW6fQKSdTkIsEoxt1z2bB6', '2024-06-11 02:41:47'),
(8, '1', '$2y$10$vbXNsw7RlIhFCmmtdMUWZeMc9utQsNQV00ZhFlXTAoLUZBl2MOwQe', '2024-06-11 02:43:59'),
(9, '2', '$2y$10$.A9SqO69a5CWYg/s8onWAeoAyXyZ53wpIqkzLDFYcURJGpV.mljXq', '2024-06-11 02:45:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
