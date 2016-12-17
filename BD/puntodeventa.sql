-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2016 a las 20:20:36
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `puntodeventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_cat` int(3) NOT NULL,
  `titulo_cat` varchar(100) NOT NULL,
  `subcategoria` varchar(100) NOT NULL,
  `visible` varchar(20) NOT NULL,
  `imagen_cat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_cat`, `titulo_cat`, `subcategoria`, `visible`, `imagen_cat`) VALUES
(1, 'Entradas para todos', 'no', 'si', 'imagenes/entradas.jpg'),
(2, 'Tacos', 'no', 'si', 'imagenes/tacos.jpg'),
(3, 'Cortes para compartir', 'no', 'si', 'imagenes/arracheraalaparrilla.jpg'),
(4, 'Quesos Fundidos', 'no', 'si', 'imagenes/quesofundidoconchorizo.jpg'),
(5, 'Ensaladas', 'no', 'si', 'imagenes/ensaladamixta.jpg'),
(8, 'Postres ', 'si', 'si', 'imagenes/postres.jpg'),
(9, 'Cerveza', 'no', 'si', 'imagenes/cervezas.jpg'),
(10, 'Extras', 'no', 'si', 'imagenes/extras.png'),
(11, 'Especialidades', 'no', 'si', 'imagenes/especialidades.jpg'),
(12, 'Hamburguesas ', 'no', 'si', 'imagenes/hamburguesa.jpg'),
(13, 'Promociones', 'no', 'no', 'imagenes/promociones.jpg'),
(14, 'Botellas', 'si', 'si', 'imagenes/botellas.jpg'),
(15, 'Copas', 'si', 'si', 'imagenes/copas.jpg'),
(16, 'Cokteleria', 'si', 'si', 'imagenes/coctelymarga.jpg'),
(17, 'Shoots', 'no', 'no', 'imagenes/shoots.jpg'),
(44, 'Cristaleria', 'no', 'no', '../uploads/'),
(46, 'ADEREZOS', 'no', 'no', '../uploads/'),
(21, 'Guarniciones', 'no', 'si', 'imagenes/guarniciones.jpg'),
(32, 'Menu Infantil', 'no', 'si', 'imagenes/infantil.jpg'),
(29, 'Cuba de a Litro', 'no', 'si', 'imagenes/cuba.jpg'),
(30, 'Micheladas con Chope', 'no', 'si', 'imagenes/micheladas.jpg'),
(31, 'Bebidas', 'no', 'si', 'imagenes/bebidas.jpg'),
(33, 'BOTANAS', 'no', 'no', 'imagenes/botanas.jpg'),
(37, 'MARISCOS', 'no', 'no', 'imagenes/maricos.jpg'),
(38, 'Pastas', 'no', 'no', 'imagenes/ajo-picado_19-128859.jpg'),
(39, 'CAFES', 'no', 'no', 'imagenes/CHOCOLATES.jpg'),
(41, 'PROMOS NUEVAS', 'si', 'no', 'imagenes/PROMOS.jpg'),
(45, 'Mermas', 'no', 'no', '../uploads/'),
(47, 'Cortecias', 'no', 'no', '../uploads/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctg_tiposusuario`
--

CREATE TABLE `ctg_tiposusuario` (
  `id_TipoUsuario` int(11) NOT NULL,
  `tx_TipoUsuario` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ctg_tiposusuario`
--

INSERT INTO `ctg_tiposusuario` (`id_TipoUsuario`, `tx_TipoUsuario`) VALUES
(1, 'Administrador'),
(2, 'Usuario Normal'),
(3, 'Caja'),
(4, 'Insumos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(10) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `localidad` varchar(300) NOT NULL,
  `CP` varchar(300) NOT NULL,
  `telefono` varchar(300) NOT NULL,
  `RFC` varchar(300) NOT NULL,
  `logo` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre`, `direccion`, `localidad`, `CP`, `telefono`, `RFC`, `logo`) VALUES
(3, 'GUFRA MÉXICO', 'VOLCAN DE COLIMA # 2 INT 54', 'LOMA ALTA INFONAVIT', '90014', '', 'FARC890403NZ3', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_dia`
--

CREATE TABLE `inventario_dia` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` double NOT NULL,
  `Antes` double NOT NULL,
  `Agregar` double NOT NULL,
  `Restar` double NOT NULL,
  `Nuevo` double NOT NULL,
  `u_medida` varchar(100) NOT NULL,
  `id_area_responsable` int(100) NOT NULL,
  `imagen` varchar(300) NOT NULL,
  `fecha` date NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `observaciones` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_general`
--

CREATE TABLE `inventario_general` (
  `id_producto` int(100) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `precio_distribuidor` double NOT NULL,
  `precio_venta` double NOT NULL,
  `cantidad_inv` double NOT NULL,
  `unidad_medida` double NOT NULL,
  `onzas` double NOT NULL,
  `minimo_almacen` double NOT NULL,
  `area_responsable` varchar(100) NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventario_general`
--

INSERT INTO `inventario_general` (`id_producto`, `producto`, `codigo`, `precio_distribuidor`, `precio_venta`, `cantidad_inv`, `unidad_medida`, `onzas`, `minimo_almacen`, `area_responsable`, `imagen`) VALUES
(2, 'Rib eye de 350gr', '101', 81.65, 197.5, 1.5, 2, 0, 20, '4', '../uploads/carne.jpg'),
(3, 'Top Srloin 350gr', '102', 135, 135, 7, 2, 0, 10, '4', '../uploads/carne.jpg'),
(4, 'Short rib de 200gr', '103', 29.3, 149.5, 9, 2, 0, 60, '4', '../uploads/carne.jpg'),
(588, 'Cerveza Victoria 355ml', '7501064115400', 10, 0, 30, 2, 0, 100, '8', '../uploads/cerveza.jpg'),
(614, 'Mollejas 300gr', '2004', 0, 0, 2.1, 1, 0, 10, '4', '../uploads/carne.jpg'),
(7, 'Fajitas de pollo de 300gr', '106', 59, 95, -0.855, 1, 0, 6, '4', 'imagenes/fajitasdepollo.jpg'),
(8, 'Chistorra 180gr', '107', 105, 85, 1.37, 1, 0, 10, '4', '../uploads/carne.jpg'),
(615, 'Tocino', '2006', 85, 0, 0.6, 1, 0, 3, '4', '../uploads/carne.jpg'),
(707, 'Aguachile 130 gr', '555', 0, 0, 4, 2, 0, 1.3, '4', '../uploads/'),
(586, 'Arrachera', '2001', 178, 0, 11.385, 1, 0, 40, '4', '../uploads/carne.jpg'),
(587, 'Cerveza Corona 355 ml', '7501064101410', 10.08, 0, 37, 2, 0, 100, '8', '../uploads/cerveza.jpg'),
(14, 'Hamburguesa nortena 200 gr', '113', 75, 75, 1, 2, 0, 20, '4', '../uploads/carne.jpg'),
(15, 'Alitas de pollo ', '114', 2.3, 138, -421, 2, 0, 200, '4', '../uploads/carne.jpg'),
(620, 'Nuggets', '20011', 0, 0, 180, 2, 0, 3, '4', '../uploads/carne.jpg'),
(723, 'EPAZOTE', '00013', 1, 0, 0, 2, 0, 10, '5', '../uploads/'),
(618, 'Cecina', '2009', 180, 0, 0.1, 1, 0, 3, '4', '../uploads/carne.jpg'),
(617, 'Planchuela', '2008', 120, 0, 3.335, 1, 0, 6, '4', '../uploads/carne.jpg'),
(611, 'Licor Frangelico 700ml', '8004160660304', 0, 0, 0.06, 3, 29.418, 3, '7', '../uploads/botellas.jpg'),
(699, 'Te', '5872554', 0, 0, 38, 2, 0, 50, '17', '../uploads/'),
(24, 'Costilla de cerdo 120gr', '123', 72, 72, -6.09, 1, 0, 4, '4', 'imagenes/costilladecerdo.jpg'),
(628, 'Vino Tinto LaCetto 750ml', '5004', 0, 0, -0.3, 3, 25.361, 3, '7', '../uploads/botellas.jpg'),
(702, 'New York 350 gr', '1567', 0, 0, 5, 2, 0, 10, '4', '../uploads/'),
(607, 'Agua Natural 355 ml', '7501059200067', 0, 0, -44, 2, 0, 50, '10', '../uploads/REFRESCOS.jpg'),
(513, 'Brandy Magno 700ml', '8410337001083', 199, 0, 0.58, 3, 25.361, 3, '7', '../uploads/alcohol.jpg'),
(514, 'Brandy Presidente 700ml', '7501003693402', 75, 0, 2.4, 3, 79.125, 3, '7', '../uploads/alcohol.jpg'),
(515, 'Ron Malibu Coco 750ml', '089540468655', 0, 0, 0, 3, 27.389, 2.5, '7', '../uploads/alcohol.jpg'),
(516, 'Ron Appleton Special 750ml', '7501035020429', 0, 0, 2.46, 3, 152.163, 2.25, '7', '../uploads/alcohol.jpg'),
(517, 'Ron Havana Club 7  750ml', '8501110080446', 212.89, 0, 0.54, 3, 78.11, 3, '7', '../uploads/alcohol.jpg'),
(518, 'Ron Bacardi Blanco  750ml', '7501008613122', 103.75, 0, 3.96, 3, 101.442, 3, '7', '../uploads/alcohol.jpg'),
(519, 'Ron Matusalem Clasico 750ml', '7501035045019', 152.58, 0, 0.69, 3, 50.721, 3, '7', '../uploads/alcohol.jpg'),
(520, 'Ron Appleton Estate 750ml', '7501035020207', 0, 0, 2.86, 3, 71.009, 3, '7', '../uploads/alcohol.jpg'),
(521, 'Ron Captain Morgan 750ml', '082000747345', 0, 0, 1.68, 3, 95.355, 3, '7', '../uploads/alcohol.jpg'),
(522, 'Licor 43 750ml', '8410221110075', 0, 0, 0, 3, 33.476, 3, '7', '../uploads/alcohol.jpg'),
(523, 'Licor Disaronno 700ml', '7501035020320', 0, 0, 0.18, 3, 26.375, 3, '7', '../uploads/alcohol.jpg'),
(524, 'Licor Baileys 750ml', '5011013100132', 212, 0, 0.42, 3, 25.361, 3, '7', '../uploads/alcohol.jpg'),
(525, 'Licor Galliano 700ml', '8716000967169', 0, 0, 0.48, 3, 85.211, 3, '7', '../uploads/alcohol.jpg'),
(526, 'Tequila Cazadores Reposado 750ml', '7501171600028', 174.27, 0, 0.69, 3, 40.577, 3, '7', '../uploads/alcohol.jpg'),
(527, 'Tequila Hornitos Reposado 700ml', '7501005600750', 0, 0, 1.1, 3, 52.75, 3, '7', '../uploads/alcohol.jpg'),
(528, 'Tequila 100 AÃƒÂ±os Azul Reposado 700ml', '7501005616898', 0, 0, 2.81, 3, 155.206, 3, '7', '../uploads/alcohol.jpg'),
(529, 'Tequila Don Julio Reposado 750ml', '674545000049', 0, 0, 1.23, 3, 49.368, 3, '7', '../uploads/alcohol.jpg'),
(530, 'Tequila Herradura Reposado 700ml', '744607002103', 320.78, 0, 1.74, 3, 50.383, 3, '7', '../uploads/alcohol.jpg'),
(531, 'Tequila Centenario Reposado 700ml', '7501048810208', 167.04, 0, 1.5, 3, 97.384, 3, '7', '../uploads/alcohol.jpg'),
(532, 'Tequila Azul 700ml', '7501048840205', 127.95, 0, 1.23, 3, 59.175, 3, '7', '../uploads/alcohol.jpg'),
(533, 'Tequila Jose Cuervo Especial 990ml', '7501035010550', 100, 0, 0.77, 3, 253639997847000, 3, '7', '../uploads/alcohol.jpg'),
(534, 'Tequila Jose Cuervo Tradicional 695ml', '7501035012028', 186.16, 0, -0.03, 3, 20.288, 3, '7', '../uploads/alcohol.jpg'),
(535, 'Tequila Don Julio Blanco 750ml', '674545000018', 258.32, 0, 0.54, 3, 12.511, 3, '7', '../uploads/alcohol.jpg'),
(536, 'Ginebra Beefeater 750ml', '5000329002216', 257.72, 0, 1.32, 3, 45.649, 3, '7', '../uploads/alcohol.jpg'),
(537, 'Vino tinto Casillero del Diablo 750ml', '7804320303178', 146.87, 0, 1.26, 3, 76.082, 3, '7', '../uploads/alcohol.jpg'),
(538, 'Cognac Courvoisier VS 700ml', '3049197110076', 0, 0, 0.18, 3, 12.173, 3, '7', '../uploads/alcohol.jpg'),
(539, 'Cognac Courvoisier VSOP 700ml', '3049197210196', 0, 0, 0.7, 3, 35.843, 3, '7', '../uploads/alcohol.jpg'),
(540, 'Cognac Martell VSOP 700ml', '4607014056847', 625.6, 0, 0.76, 3, 50.721, 3, '7', '../uploads/alcohol.jpg'),
(541, 'Cognac Martell VS 700ml', '080432403716', 478.95, 0, 1.261, 3, 47.34, 3, '7', '../uploads/alcohol.jpg'),
(542, 'Cognac Hennessy VSOP 700ml', '3245990969402', 802.75, 0, 0.7, 3, 0, 3, '7', '../uploads/alcohol.jpg'),
(543, 'Licor de Batalla Anis Mico Dulce 1L', '7501043706407', 90.86, 0, 0.925, 3, 62.218, 3, '7', '../uploads/alcohol.jpg'),
(544, 'Anis Domec Dulce 1L', '7501003692139', 0, 0, 1, 3, 16.231, 3, '7', '../uploads/alcohol.jpg'),
(545, 'Anis Domec Seco 1L', '7501003692146', 0, 0, 0.54, 3, 22.317, 3, '7', '../uploads/alcohol.jpg'),
(546, 'Anis Chinchon Dulce 1L', '8410023172240', 0, 0, 0.18, 3, 30.433, 3, '7', '../uploads/alcohol.jpg'),
(547, 'Anis Chincon Seco 1L', '8410023172264', 0, 0, 0.7, 3, 20.288, 3, '7', '../uploads/alcohol.jpg'),
(548, 'Anis Las Cadenas 750ml', '8411183199061', 0, 0, 0.24, 3, 18.26, 3, '7', '../uploads/alcohol.jpg'),
(549, 'Anis Sambuca Negro Vaccari 700ml', '8716000966452', 232.75, 0, 0.98, 3, 144.048, 3, '7', '../uploads/alcohol.jpg'),
(550, 'Licor de Batalla Platano 1L', '7501043708654', 0, 0, 0.925, 3, 6.087, 3, '7', '../uploads/alcohol.jpg'),
(551, 'Licor de Batalla Durzano 1L', '7501043707459', 0, 0, 0.48, 3, 16.907, 3, '7', '../uploads/alcohol.jpg'),
(552, 'Licor de Batalla Curacao Azul 1L', '7501043709354', 0, 0, 0.54, 3, 32.461, 3, '7', '../uploads/alcohol.jpg'),
(553, 'Licor de Batalla Curazao Azul 750ml', '7501012600446', 0, 0, 0.3, 3, 20.288, 3, '7', '../uploads/alcohol.jpg'),
(554, 'Licor de Batalla Agavero 750ml', '7501048801206', 0, 0, -0.06, 3, 29.418, 3, '7', '../uploads/alcohol.jpg'),
(555, 'Licor de Batalla Menta Blanca 750ml', '7501012600262', 0, 0, 0.135, 3, 12.173, 3, '7', '../uploads/alcohol.jpg'),
(556, 'Licor de Batalla Fernet 750ml', '7501012600132', 0, 0, 0.375, 3, 14.202, 3, '7', '../uploads/alcohol.jpg'),
(557, 'Licor de Batalla Melon 1L', '7501043707657', 0, 0, 0.76, 3, 6.087, 3, '7', '../uploads/alcohol.jpg'),
(558, 'Licor de Batalla Controy 1L', '7501043709705', 116.25, 0, 0.79, 3, 24.684, 3, '7', '../uploads/alcohol.jpg'),
(559, 'Licor de Batalla Ron Antillano 1L', '7501043712200', 0, 0, 1.24, 3, 40.408, 3, '7', '../uploads/alcohol.jpg'),
(560, 'Licor de Batalla Ginebra Oso  Negro 1.200 L', '7501035015043', 0, 0, 1.34, 3, 37.872, 3, '7', '../uploads/alcohol.jpg'),
(561, 'Licor de Batalla Rancho Escondido 750ml', '7503001506876', 0, 0, 1.2, 3, 0, 3, '7', '../uploads/alcohol.jpg'),
(562, 'Licor de Batalla Jerez Tres Coronas 1L', '7501043703208', 0, 0, 0.24, 3, 4.058, 3, '7', '../uploads/alcohol.jpg'),
(563, 'Licor de Batalla Casis 750ml', '3104691015095', 0, 0, 0.18, 3, 10.144, 3, '7', '../uploads/alcohol.jpg'),
(564, 'Licor de Batalla Hpnotiq 750ml', '736040011064', 0, 0, 0.75, 3, 8.115, 3, '7', '../uploads/alcohol.jpg'),
(565, 'Licor de Batalla Martini Blanco 750ml', '5010677924009', 0, 0, 0.69, 3, 25.361, 3, '7', '../uploads/alcohol.jpg'),
(566, 'Licor de Batalla Martini Rosso 750ml', '5010677914000', 0, 0, 0.09, 3, 12.173, 3, '7', '../uploads/alcohol.jpg'),
(567, 'Licor de Batalla Martini Extra Dry 750ml', '5010677934008', 0, 0, 0.81, 3, 14.202, 3, '7', '../uploads/alcohol.jpg'),
(568, 'Licor de Batalla Cinzano Rosso 750ml', '8000020000372', 0, 0, 0.3, 3, 18.26, 3, '7', '../uploads/alcohol.jpg'),
(569, 'Licor de Batalla Kahlua 980ml', '7501003692368', 0, 0, 0.805, 3, 34.828, 3, '7', '../uploads/alcohol.jpg'),
(570, 'Licor de Batalla William Lawsons 750ml', '5010752000321', 0, 0, 1.17, 3, 50.721, 3, '7', '../uploads/alcohol.jpg'),
(571, 'Licor de Batalla Campari 750ml', '8000040002509', 0, 0, 0.3, 3, 10.144, 3, '7', '../uploads/alcohol.jpg'),
(575, 'Red Bull 250ml', '9002490100070', 0, 0, 4, 2, 0, 100, '10', '../uploads/REFRESCOS.jpg'),
(577, 'Boost 235ml', '7501035046016', 0, 0, -10, 2, 0, 100, '10', '../uploads/REFRESCOS.jpg'),
(722, 'CHILE VERDE', '00012', 80, 0, -0.15, 1, 0, 1, '5', '../uploads/'),
(490, 'Whisky Grand Old Parr 12 750ml', '5000281003160', 432.5, 0, 1.1, 3, 2.029, 3, '7', '../uploads/alcohol.jpg'),
(491, 'Whisky BuchananÃ‚Â´s 18 750ml', '50196913', 1166.73, 0, 0.75, 3, 56.808, 3, '7', '../uploads/alcohol.jpg'),
(492, 'Whisky BuchananÃ‚Â´s 12 750ml', '50196388', 583.01, 0, -1.86, 3, 50.721, 3, '7', '../uploads/alcohol.jpg'),
(493, 'Whisky BuchananÃ‚Â´s Master 750ml', '5000196003774', 616.67, 0, 0.66, 3, 32.123, 3, '7', '../uploads/alcohol.jpg'),
(494, 'Whisky Black Label 12 750ml', '5000267024004', 537.5, 0, -12.99, 3, 91.298, 3, '7', '../uploads/alcohol.jpg'),
(113, 'Sopa del dia', '20304029', 0, 0, 0, 1, 0, 0, '4', 'imagenes/sopadeldia.jpg'),
(324, 'Vaporera no. 32 c/ Tapa ', '9390123', 0, 0, 0, 2, 0, 1, '6', 'imagenes/utencilios cocina.jpg'),
(626, 'GinebraTanqueray 750ml', '5002', 0, 0, 0.75, 3, 19.274, 3, '7', '../uploads/botellas.jpg'),
(605, 'Crema de coco', '4002', 0, 0, -1.86, 2, 0, 10, '11', '../uploads/botanas.jpg'),
(604, 'Leche Clavel', '4001', 0, 0, 0.12, 2, 0, 10, '11', '../uploads/botanas.jpg'),
(603, 'Jugo de Arandano 1.890L', '078742057279', 0, 0, -0.13, 2, 218.1, 10, '9', '../uploads/jugos.jpg'),
(602, 'Jugo de Manzana 1L', '7501013122190', 0, 0, 2.225, 2, 33.814, 10, '9', '../uploads/jugos.jpg'),
(601, 'Jugo de Naranja 1L', '7501013122138', 0, 0, -1.99, 2, 67.628, 10, '9', '../uploads/jugos.jpg'),
(600, 'Jugo de Tomate 1L', '7501013122121', 0, 0, 1, 2, 67.628, 10, '9', '../uploads/jugos.jpg'),
(504, 'Vodka Absolut Raspberri 750ml', '7312040040759', 209.77, 0, 1.02, 3, 25.361, 2.25, '7', '../uploads/alcohol.jpg'),
(505, 'Vodka Absolut Mango 750ml', '7312040180752', 0, 0, 0.36, 3, 14.202, 2.25, '7', '../uploads/alcohol.jpg'),
(506, 'Vodka Smirnoff 750ml', '082000000068', 127.33, 0, 2.1, 3, 52.75, 2.25, '7', '../uploads/alcohol.jpg'),
(507, 'Vodka Wyborowa 750ml', '5900685006050', 0, 540, 1.23, 3, 46.663, 2.25, '7', '../uploads/alcohol.jpg'),
(508, 'Vodka Absolut Azul 750ml', '7312040017010', 179, 0, 1.5, 3, 23.332, 2.25, '7', '../uploads/alcohol.jpg'),
(509, 'Brandy Terry Centenario 700ml', '8410162011028', 232.5, 0, 2.38, 3, 76.098, 3, '7', '../uploads/alcohol.jpg'),
(510, 'Brandy Torres 5 700ml', '8410113000019', 143.93, 0, 1.04, 3, 114.285, 3, '7', '../uploads/alcohol.jpg'),
(511, 'Brandy Torres 10 700ml', '8410113000071', 216, 0, 1.56, 3, 67.628, 2, '7', '../uploads/alcohol.jpg'),
(512, 'Brandy Torres 20 700ml', '1001', 684, 0, 0.82, 3, 38.886, 3, '7', '../uploads/alcohol.jpg'),
(373, 'Organizador barra', '960030', 0, 0, 0, 2, 0, 1, '12', 'imagenes/barra.jpg'),
(599, 'Jugo de Toronja 1L', '7501013122107', 5, 0, 2, 2, 135.256, 10, '9', '../uploads/jugos.jpg'),
(598, 'Jugo de Uva 1 L', '7501013122145', 0, 0, 3.87, 2, 135.256, 10, '9', '../uploads/jugos.jpg'),
(597, 'Jugo de PiÃƒÂ±a 1L', '7501013122114', 0, 0, 1.29, 2, 169.07, 10, '9', '../uploads/jugos.jpg'),
(638, 'Camaron Pacotilla Cocina', '67671', 0, 0, -3.09, 1, 0, 3, '4', '../uploads/carne.jpg'),
(639, 'Camaron Pacotilla Barra', '67672', 0, 0, -1.62, 2, 0, 3, '11', '../uploads/carne.jpg'),
(640, 'Botanas', '9090123', 0, 0, 0, 2, 0, 50, '5', '../uploads/abarrotes.jpg'),
(594, 'Cerveza Bud Ligth 355ml', '018200002793', 0, 0, 18, 2, 0, 100, '8', '../uploads/cerveza.jpg'),
(592, 'Cerveza sin alcohol Budweiser 355ml', '018200001635', 0, 0, 23, 2, 0, 100, '8', '../uploads/cerveza.jpg'),
(593, 'Cerveza sin alcohol ODOULS 355ml', '018200002267', 0, 0, 24, 2, 101.442, 100, '8', '../uploads/cerveza.jpg'),
(591, 'Cerveza Corona Ligth 355ml', '7501064192562', 0, 0, 56, 2, 0, 100, '8', '../uploads/cerveza.jpg'),
(590, 'Cerveza Negra Modelo  355ml', '75027285', 0, 0, -16, 2, 0, 100, '8', '../uploads/cerveza.jpg'),
(323, 'bascula de 40 Kls', '9389012', 0, 0, 0, 2, 0, 1, '6', 'imagenes/utencilios cocina.jpg'),
(503, 'Vodka Absolut Mandarin 750ml', '7312040050758', 0, 0, 1.98, 3, 58.836, 3, '7', '../uploads/alcohol.jpg'),
(185, 'Cerveza Barril Clara', '56575859', 22, 44, 104.66, 3, 10219.774, 200, '8', 'imagenes/cerveza clara barril.jpg'),
(502, 'Vodka Grey Goose 750ml', '5010677850209', 0, 0, 0.72, 3, 10.144, 3, '7', '../uploads/alcohol.jpg'),
(501, 'Vodka Ciroc 750ml', '088076161863', 0, 0, 0.99, 3, 31.447, 3, '7', '../uploads/alcohol.jpg'),
(154, 'Nachos', '098765432', 45, 60, -10.5, 1, 0, 0, '5', 'imagenes/nachosbolsa.jpg'),
(158, 'Te Bolsitas', '20304024', 10, 23, 0, 2, 0, 30, '15', '../uploads/abarrotes.jpg'),
(159, 'Helado', '56789', 40, 36, -2641.96, 3, 0, 2, '5', 'imagenes/heladobolas.jpg'),
(160, 'Flan', '567891', 0, 0, 1, 2, 0, 10, '4', 'imagenes/flan.jpg'),
(331, 'Porta hermetico mediano con tapa ', '9478901', 0, 0, 0, 2, 0, 4, '6', 'imagenes/utencilios cocina.jpg'),
(163, 'Cheesecake Cookie', '102938', 0, 0, 7, 2, 0, 16, '4', 'imagenes/cheesecakecookie.jpg'),
(334, 'Porta hermetico redodndo tapa amarilla ', '9401234', 0, 0, 0, 2, 0, 2, '6', 'imagenes/utencilios cocina.jpg'),
(333, 'Juego de 3 Medidas porta hermetico redodndo ', '9490123', 0, 0, 0, 2, 0, 3, '6', 'imagenes/utencilios cocina.jpg'),
(500, 'Licor de Batalla Vodka Oso Negro 1L', '7501035015203', 0, 0, 1.69, 3, 47.34, 3, '7', '../uploads/alcohol.jpg'),
(499, 'Vodka Stolichnaya 750 ml', '4750021000157', 0, 0, 2.76, 3, 76.082, 3, '7', '../uploads/alcohol.jpg'),
(498, 'Whisky JB  750ml', '5010103800310', 101.91, 0, 2.13, 3, 76.082, 3, '7', '../uploads/alcohol.jpg'),
(608, 'Camaron para pelar', '2002', 0, 0, 1, 1, 0, 4, '4', '../uploads/carne.jpg'),
(173, 'Extra Michelada ', '70809026', 0, 5, -77, 3, 0, 0, '8', 'imagenes/cerveza_tarro.jpg'),
(174, 'Extra Cubana', '70809027', 0, 5, -11, 3, 0, 0, '8', 'imagenes/cerveza_tarro.jpg'),
(175, 'Extra Ojos Rojos', '70809028', 0, 8, -259, 3, 0, 0, '8', 'imagenes/cerveza_tarro.jpg'),
(177, 'Extra Diabla ', '70809029', 0, 5, -22, 3, 0, 0, '8', 'imagenes/cerveza_jarro.jpg'),
(637, 'Refrescos', '0001', 0, 0, -603.48, 2, -33.814, 500, '10', '../uploads/REFRESCOS.jpg'),
(398, 'Cerveza Barril Obscura', '1009565656', 22, 0, -183.305, 3, 26660.31, 12, '8', 'imagenes/cervezabarril.jpg'),
(497, 'Whisky Chivas Regal 12 750ml', '080432400395', 0, 0, 1.17, 3, 35.505, 3, '7', '../uploads/alcohol.jpg'),
(495, 'Whisky Chivas Regal 18 750ml', '5000299225028', 1279.97, 0, 0.746, 3, 12.173, 3, '7', '../uploads/alcohol.jpg'),
(496, 'Whisky Red Label 750ml', '5000267014074', 237.9, 0, 3.41, 3, 272086.718, 3, '7', '../uploads/alcohol.jpg'),
(625, 'Anis Sambuca Blanco 700ml', '3035541001213', 0, 0, 0.03, 3, 21.303, 3, '7', '../uploads/botellas.jpg'),
(627, 'Vino Tinto Concha y Toro 750ml', '5003', 79.5, 0, 5.805, 3, 65.937, 3, '7', '../uploads/botellas.jpg'),
(581, 'Agua Tonica Quina 296ml', '7501073825208', 0, 0, 47, 2, 0, 100, '10', '../uploads/REFRESCOS.jpg'),
(589, 'Cerveza Modelo Especial 355ml', '75027278', 10.58, 0, 34, 2, 405.768, 100, '8', '../uploads/cerveza.jpg'),
(609, 'Jarabe Natural Granadina 1L', '7501043700603', 35.72, 0, 4.18, 3, 67.628, 3, '7', '../uploads/jarabe natural.jpg'),
(610, 'Jarabe Natural 1L', '7501043700504', 35.43, 0, -1.73, 3, 90.622, 4, '7', '../uploads/jarabe natural.jpg'),
(612, 'Licor Strega 750ml', '5001', 0, 0, 0.54, 3, 23.332, 3, '7', '../uploads/botellas.jpg'),
(613, 'Chorizo Blanco 90gr', '2003', 9.5, 0, 34.76, 2, 0, 60, '4', '../uploads/carne.jpg'),
(616, 'Espagueti 250gr', '2007', 0, 0, -3.8, 2, 0, 20, '5', '../uploads/'),
(621, 'Carne Enchilada', '20012', 0, 0, 0.508, 1, 0, 2, '4', '../uploads/carne.jpg'),
(623, 'Filete  200gr', '20014', 0, 0, -4, 2, 574.838, 20, '4', '../uploads/carne.jpg'),
(624, 'Salmon 200 gr', '20015', 308, 0, 32.8, 2, 0, 4, '4', '../uploads/carne.jpg'),
(718, 'JITOMATE', '00008', 10, 0, -2.4225, 1, 0, 4, '5', '../uploads/'),
(630, 'Ron Bacardi Solera 750 ml', '5006', 0, 0, 1.35, 3, 54.779, 3, '7', '../uploads/botellas.jpg'),
(631, 'Ron Flor de CaÃƒÂ±a 750ml', '507', 0, 0, 1.99, 3, 156.762, 3, '7', '../uploads/botellas.jpg'),
(632, 'Ron Zacapa 23 750ml', '5007', 649.99, 0, 0.9, 3, 25.361, 3, '7', '../uploads/botellas.jpg'),
(633, 'Brandy Carlos I 700ml', '5008', 0, 0, 0.6, 3, 20.288, 3, '7', '../uploads/botellas.jpg'),
(716, 'CONCENTRADO DE RES', '00006', 174.5, 0, -0.885, 1, 0, 0.5, '5', '../uploads/'),
(636, 'Tequila Herradura AÃƒÂ±ejo 700ml', '5011', 0, 0, 0.5, 3, 8.792, 0, '7', '../uploads/botellas.jpg'),
(642, 'Botana', '2020201', 0, 0, 200, 2, 0, 0, '4', 'imagenes/5.jpg'),
(643, 'Cristaleria Tarro', '505020', 0, 0, -1, 2, 0, 0, '12', 'imagenes/tarro.jpg'),
(644, 'Cristaleria vaso', '505021', 0, 0, -5, 2, 0, 0, '12', 'imagenes/vaso.jpg'),
(645, 'Cristaleria Cenicero', '505022', 0, 0, -1, 2, 0, 0, '12', 'imagenes/cenicero.jpg'),
(647, 'BOLSA DE CHOCOLATES', '80010', 47, 80, 17, 2, 0, 40, '11', 'imagenes/CHOCOLATES.jpg'),
(711, 'Zanahorias', '4444', 10, 0, -0.472, 1, 0, 5, '4', '../uploads/'),
(650, 'Flan ', '90016', 0, 45, 0, 2, 0, 40, '5', 'imagenes/descarga.jpg'),
(651, 'Chees kake o choco flan', '90018', 0, 50, 13, 2, 0, 13, '5', 'imagenes/POSTRES.jpg'),
(652, 'DESCORCHE', '90020', 200, 200, 5.8, 2, 196.121, 100, '7', 'imagenes/descargaESCORCHE.jpg'),
(721, 'CONCENTRADO DE POLLO', '00011', 75, 0, -0.062, 1, 0, 1, '5', '../uploads/'),
(668, 'CHAMBARETE CON HUESO ', '150', 70.7, 0, -1.256, 1, 0, 2, '4', 'imagenes/Chambarete-.jpg'),
(709, 'Jugo de arandano', '07874211774', 0, 0, 2, 3, 0, 6, '9', '../uploads/'),
(706, 'Arrachera Importada 330gr', '7595', 81.3, 0, -15, 2, 0, 20, '4', '../uploads/'),
(705, 'Papa', '14789', 47, 0, -15.395, 1, 0, 13.6, '4', '../uploads/'),
(657, 'Crepas Suzette', '0000055', 0, 65, -10, 2, 0, 10, '4', 'imagenes/botanas.jpg'),
(666, 'Tequila Centenario Plata', '015489', 0, 660, 0.93, 3, 50.721, 0.075, '7', 'imagenes/tarro.jpg'),
(658, 'Cerveza Leon', '0002', 10, 30, 50, 2, 1149.676, 48, '8', 'imagenes/tarro.jpg'),
(659, 'Tequila Batalla', '00459', 0, 0, -0.69, 3, 28.742, 2, '7', 'imagenes/tarro.jpg'),
(661, 'Vino Tinto  Carlo Rossi', '101090', 0, 0, 6.365, 3, 101.469, 3.5, '7', 'imagenes/tarro.jpg'),
(662, 'Licor Jagermeister', '101095', 0, 0, -0.06, 3, 25.361, 0.7, '7', 'imagenes/tarro.jpg'),
(663, 'Licor Crema De Cacao', '101097', 0, 0, 0.24, 3, 33.814, 1, '7', 'imagenes/coc.jpg'),
(701, 'T-Bone 350gr', '45687', 0, 0, 4, 2, 0, 10, '4', '../uploads/'),
(664, 'Cafe Irlandes', '000111', 0, 0, 15, 2, 0, 15, '17', 'imagenes/CHOCOLATES.jpg'),
(669, 'Cerveza Pacifico', '0257964', 35, 30, 98.075, 2, 0, 500, '8', 'imagenes/tarro.jpg'),
(670, 'Midori', '345895', 0, 0, 0.6, 3, 30.433, 3, '7', 'imagenes/coc.jpg'),
(719, 'AJO', '00009', 64, 0, -0.0078, 1, 0, 1, '5', '../uploads/'),
(720, 'NOPAL', '00010', 10, 0, -36, 2, 0, 20, '5', '../uploads/'),
(717, 'LAUREL', '00007', 10, 0, 0, 2, 0, 2, '4', '../uploads/'),
(673, 'Mezcal memorable Espadin', '7503012751036', 0, 500, -0.18, 3, 0, 3, '7', 'imagenes/botellas.jpg'),
(713, 'PORO', '00003', 10, 0, 0, 2, 0, 3, '5', '../uploads/'),
(714, 'ACEITE', '00004', 18.51, 0, -8.451, 3, 0, 10, '5', '../uploads/'),
(715, 'SAL DE MESA', '00005', 8.31, 0, -0.095, 1, 0, 1, '5', '../uploads/'),
(677, 'Mezcal Marca Negra', '736040527336', 0, 600, 0.27, 3, 25.361, 3, '7', 'imagenes/botellas.jpg'),
(712, 'Cebollas', '55555', 10, 0, 1.0214, 1, 0, 5, '4', '../uploads/'),
(680, 'Mezcal Joven Meteoro', '011112090988', 0, 600, 1.17, 3, 25.361, 3, '7', 'imagenes/botellas.jpg'),
(710, 'Membrana (sal de grano)', 'J19A', 60, 0, 2, 1, 0, 3, '4', '../uploads/'),
(700, 'medula', '7895', 0, 0, 2.22, 1, 0, 3, '4', '../uploads/'),
(691, 'Vino Blanco don simon', '8410261206073', 0, 300, -0.66, 3, 25.361, 1, '7', 'imagenes/botellas.jpg'),
(695, 'Mezcal nuestra Soledad', '7503011641437', 0, 500, 1.08, 3, 25.361, 1, '7', 'imagenes/botellas.jpg'),
(822, 'Jugo de mango', '9146261903352073', 0, 0, 4, 3, 0, 3, '9', '../uploads/'),
(703, 'Prime Rib 350 gr', '128965', 0, 0, 5, 2, 0, 10, '4', '../uploads/'),
(704, 'Black Rib', '57896416', 0, 0, 6.353, 1, 0, 4, '4', '../uploads/'),
(724, 'CILANTRO', '00014', 5, 0, 0, 2, 0, 3, '5', '../uploads/'),
(725, 'AGUACATE', '00015', 58, 0, -5.58, 1, 0, 2, '5', '../uploads/'),
(726, 'SALADITAS', '00016', 0.64, 0, -192, 2, 0, 200, '5', '../uploads/'),
(727, 'CATSUP', '00017', 14.53, 0, 0, 3, 0, 5, '5', '../uploads/'),
(728, 'MAGGI 800ML', '00018', 142.2, 0, -0.009, 2, 0, 2, '5', '../uploads/'),
(729, 'INGLESA 980ML', '00019', 94.12, 0, -0.009, 2, 0, 2, '5', '../uploads/'),
(730, 'LIMON COCINA', '00020', 10, 0, 0, 1, 0, 2, '5', '../uploads/'),
(731, 'LIMON BARRA', '00021', 10, 0, 0, 1, 0, 2.5, '11', '../uploads/'),
(732, 'NARANJA', '00022', 12, 0, -1.126, 1, 0, 3, '5', '../uploads/'),
(733, 'SALSA BRUJA', '00023', 60, 0, 0, 2, 0, 2, '5', '../uploads/'),
(734, 'PIMIENTA', '00024', 48, 0, 0, 1, 0, 0.25, '5', '../uploads/'),
(735, 'ACEITE DE OLIVO', '00025', 188, 0, -0.015, 3, 0, 1, '5', '../uploads/'),
(736, 'PEPINO', '00026', 2, 0, -5.915, 2, 0, 8, '5', '../uploads/'),
(737, 'JICAMA', '00027', 10, 0, -1.37, 1, 0, 2, '5', '../uploads/'),
(738, 'CEBOLLA MORADA', '00028', 12, 0, 0, 1, 0, 1, '5', '../uploads/'),
(739, 'HABANERO', '00029', 60, 0, 0, 1, 0, 0.5, '5', '../uploads/'),
(740, 'TOTOPO', '00030', 10, 0, -0.95, 1, 0, 6, '5', '../uploads/'),
(741, 'MAYONESA 3.4 KG', '00031', 158.56, 0, 0, 1, 0, 4, '5', '../uploads/'),
(742, 'LECHUGA', '00032', 4, 0, -18.71, 2, 0, 3, '5', '../uploads/'),
(743, 'JALAPEÃƒâ€˜O', '00033', 14, 0, 0, 1, 0, 1, '5', '../uploads/'),
(744, 'QUESO AZUL', '00034', 80, 0, -1.4, 1, 0, 0.5, '5', '../uploads/'),
(745, 'QUESO MANCHEGO 1KG', '00035', 162, 0, -18.8, 1, 0, 1, '5', '../uploads/'),
(746, 'QUESO CREMA', '00036', 104.6, 0, -9.026, 1, 0, 2, '5', '../uploads/'),
(747, 'LECHE', '00037', 12, 0, -3.36, 3, 0, 2, '5', '../uploads/'),
(748, 'MANTEQUILLA', '00038', 42, 0, -0.64, 1, 0, 0.5, '5', '../uploads/'),
(749, 'QUESO PARMESANO', '00039', 240, 0, -1.3875, 1, 0, 0.25, '5', '../uploads/'),
(750, 'ALBAHACA', '00040', 10, 0, 0, 2, 0, 1, '5', '../uploads/'),
(751, 'PURE DE TOMATE', '00041', 24, 0, -0.6, 3, 0, 0.5, '5', '../uploads/'),
(752, 'CARNE MOLIDA', '00042', 84, 0, 0, 1, 0, 2, '5', '../uploads/'),
(753, 'AZUCAR', '00043', 17.9, 0, -0.03, 1, 0, 2, '5', '../uploads/'),
(754, 'PURE DE PAPA', '00044', 40, 0, -1.8, 1, 0, 1, '5', '../uploads/'),
(755, 'JITOMATE CHERRY', '00045', 72, 0, -0.45, 1, 0, 0.3, '5', '../uploads/'),
(756, 'ESPARRAGO', '00046', 140, 0, -1.8, 1, 0, 0.5, '5', '../uploads/'),
(757, 'GUAJILLO', '00047', 120, 0, -1.9566, 1, 0, 0.25, '5', '../uploads/'),
(758, 'HUEVO', '00048', 1.83, 0, -6, 2, 0, 12, '5', '../uploads/'),
(759, 'HARINA', '00049', 16.5, 0, 0, 1, 0, 1, '5', '../uploads/'),
(760, 'PAN MOLIDO', '00050', 64.28, 0, 0, 1, 0, 0.2, '5', '../uploads/'),
(761, 'TORTILLA', '00051', 14, 0, -14.075, 1, 0, 8, '5', '../uploads/'),
(763, 'RABANO', '00053', 10, 0, 0, 1, 0, 1, '5', '../uploads/'),
(764, 'QUESO PANELA', '00054', 80, 0, -14.8775, 1, 0, 1, '5', '../uploads/'),
(765, 'CHAMPINON', '00056', 52, 0, 0, 1, 0, 1, '5', '../uploads/'),
(766, 'PIÃƒâ€˜A', '00057', 30, 0, 0.4, 2, 0, 1, '5', '../uploads/'),
(767, 'PEPITA', '00058', 120, 0, 0, 1, 0, 1, '5', '../uploads/'),
(768, 'AJONJOLI', '00059', 100, 0, 0, 1, 0, 1, '5', '../uploads/'),
(769, 'PEPINILLOS', '00060', 45, 0, 0, 1, 0, 1, '5', '../uploads/'),
(770, 'TORTILLA DE HARINA', '00061', 1, 0, 0, 2, 0, 20, '5', '../uploads/'),
(771, 'FRIJOL', '00062', 42, 0, -10.5, 1, 0, 2, '5', '../uploads/'),
(772, 'ARROZ', '00063', 19.9, 0, 0, 1, 0, 2, '5', '../uploads/'),
(773, 'CHICHARO', '00064', 22, 0, 0, 1, 0, 1, '5', '../uploads/'),
(774, 'ESPINACA', '00065', 5, 0, -0.45, 2, 0, 1, '5', '../uploads/'),
(775, 'CEBOLLIN', '00066', 80, 0, 0, 1, 0, 1, '5', '../uploads/'),
(776, 'CREMA DE VACA', '00067', 147.21, 0, 0.955, 3, 0, 1, '4', '../uploads/'),
(777, 'CEBOLLA CAMBRAY', '00068', 70, 0, -0.9, 1, 0, 1, '5', '../uploads/'),
(778, 'PASILLA', '00069', 170, 0, 0, 1, 0, 1, '5', '../uploads/'),
(779, 'CANELA', '00070', 10, 0, 0, 2, 0, 1, '5', '../uploads/'),
(780, 'QUESO OAXACA', '00071', 130, 0, -3.5, 1, 0, 1, '5', '../uploads/'),
(781, 'UVA', '00072', 60, 0, -0.55, 1, 0, 1, '5', '../uploads/'),
(782, 'FRESA', '00073', 40, 0, -0.75, 1, 0, 1, '5', '../uploads/'),
(783, 'CROUTON', '00074', 231.69, 0, -4.5, 1, 0, 1, '5', '../uploads/'),
(784, 'MOSTAZA', '00075', 52.38, 0, 0, 3, 0, 0.21, '5', '../uploads/'),
(785, 'MIEL', '00076', 120, 0, -0.08, 3, 0, 1, '5', '../uploads/'),
(786, 'ANCHOAS', '00077', 670, 0, 0, 1, 0, 0.5, '5', '../uploads/'),
(787, 'ACEITUNA', '00078', 66.67, 0, -0.12, 1, 0, 0.5, '5', '../uploads/'),
(788, 'PALMITO', '00079', 55, 0, -0.06, 1, 0, 0.2, '5', '../uploads/'),
(789, 'MANGO', '00080', 20, 0, -0.54, 1, 0, 1, '5', '../uploads/'),
(790, 'MANZANA', '00081', 45, 0, 0, 1, 0, 1, '5', '../uploads/'),
(791, 'NUEZ', '00082', 300, 0, -0.225, 1, 0, 0.5, '5', '../uploads/'),
(792, 'JITOMATE BOLA', '00083', 15, 0, -0.2, 1, 0, 1, '5', '../uploads/'),
(793, 'VINAGRE', '00084', 15.5, 0, -0.0075, 3, 0, 1, '5', '../uploads/'),
(794, 'JAMON', '00085', 34, 0, -0.28, 1, 0, 0.5, '5', '../uploads/'),
(795, 'MIL ISLAS', '00086', 46.6, 0, -0.69, 3, 0, 0.4, '5', '../uploads/'),
(796, 'SOYA', '00087', 150, 0, -0.16, 3, 0, 1, '5', '../uploads/'),
(797, 'MAIZENA', '00088', 61.18, 0, 0, 1, 0, 0.4, '5', '../uploads/'),
(798, 'TANG TAMARINDO', '00089', 3, 0, -0.0072, 2, 0, 1, '5', '../uploads/'),
(799, 'BBQ', '00090', 39.25, 0, -6.36, 3, 0, 2, '5', '../uploads/'),
(800, 'HAMBURGUESA ARRACHERA ', '00091', 92, 0, -2, 1, 0, 3, '4', '../uploads/'),
(801, 'QUESO AMARILLO ', '00092', 2, 0, -10.77, 2, 0, 20, '5', '../uploads/'),
(802, 'BIMBOLLO', '00093', 4.47, 0, -7, 2, 0, 8, '5', '../uploads/'),
(803, 'SALCHICHA', '00094', 75, 0, -0.77, 1, 0, 1, '5', '../uploads/'),
(804, 'HERSHEY', '00095', 76.4, 0, -0.135, 3, 0, 0.4, '5', '../uploads/'),
(805, 'LECHERA', '00096', 92, 0, -0.661, 1, 0, 2, '5', '../uploads/'),
(806, 'GALLETA DE CHOCOLATE', '00097', 1, 0, -9, 2, 0, 40, '5', '../uploads/'),
(807, 'CHIPOTLE', '00098', 33, 0, -0.021, 1, 0, 0.3, '5', '../uploads/'),
(808, 'PAN BLANCO', '00099', 43, 0, -0.24, 1, 0, 1, '5', '../uploads/'),
(809, 'TEMPURA', '00100', 79, 0, -0.61, 1, 0, 1, '5', '../uploads/'),
(810, 'PERA', '00104', 20, 0, 0, 1, 0, 2, '5', '../uploads/'),
(811, 'PASAS', '00105', 48, 0, 0, 1, 0, 0.5, '5', '../uploads/'),
(812, 'NUEZ NOGADA', '00108', 302, 0, 3.8, 1, 0, 1, '5', '../uploads/'),
(813, 'PAPA VERDURA', '00109', 8, 0, -0.6, 1, 0, 2, '5', '../uploads/'),
(814, 'CONCENTRADO DE VAINILLA', '00110', 20, 0, -0.025, 3, 0, 1, '5', '../uploads/'),
(815, 'Salsa para coctel de camarones', '55555555', 60, 0, -1.87, 3, 0, 2, '4', '../uploads/'),
(816, 'Salsa italiana', '222222', 60, 0, -0.749, 3, 0, 2, '4', '../uploads/'),
(817, 'REFRESCO 235', '09217197120', 6.91, 0, -810, 2, 0, 234, '10', '../uploads/'),
(818, 'Relleno de chile en nogada', '154864641', 0, 0, 7.4, 1, 0, 2, '4', '../uploads/'),
(819, 'Crema nogada', '165412168', 0, 0, 7, 3, 0, 5, '4', '../uploads/'),
(820, 'Chile Poblano', '4654165', 0, 0, -16, 2, 0, 5, '5', '../uploads/'),
(821, 'Granada', '464713', 0, 0, 0.77, 1, 0, 2, '4', '../uploads/'),
(823, 'Whisky Jack Daniels 750ml', '7474747410', 0, 0, 0, 3, 0, 2, '7', '../uploads/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id_subcat` int(50) NOT NULL,
  `id_cat_principal` int(50) NOT NULL,
  `titulo_sub` varchar(254) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `img` varchar(254) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id_subcat`, `id_cat_principal`, `titulo_sub`, `img`) VALUES
(1, 8, 'Postres Dulces', 'imagenes/postresdulces.jpg'),
(2, 8, 'Postres Flameados', 'imagenes/postresflameados.jpg'),
(3, 14, 'Whisky', 'imagenes/whisky.jpg'),
(4, 14, 'Licores', 'imagenes/licores.jpg'),
(5, 14, 'Ginebra', 'imagenes/ginebra.jpg'),
(6, 14, 'Cognac', 'imagenes/cognac.jpg'),
(33, 14, 'Anis', '../uploads/botellas.jpg'),
(8, 14, 'Vermouth', 'imagenes/vermouth.jpg'),
(9, 14, 'Vinos Tintos', 'imagenes/vinostintos.jpg'),
(10, 14, 'Vodkas', 'imagenes/vodkas.jpg'),
(11, 14, 'Rones', 'imagenes/rones.jpg'),
(12, 14, 'Brandys', '../uploads/28 dias.jpg'),
(13, 14, 'Tequilas', 'imagenes/tequilas.jpg'),
(14, 15, 'C. Whisky', 'imagenes/whisky.jpg'),
(15, 15, 'C.Licores', 'imagenes/licores.jpg'),
(16, 15, 'C. Ginebra', 'imagenes/ginebra.jpg'),
(17, 15, 'C.Cognac', 'imagenes/cognac.jpg'),
(18, 15, 'C.Anis', 'imagenes/anis.jpg'),
(19, 15, 'C. Vermouth', 'imagenes/vermouth.jpg'),
(20, 15, 'C.Vinos Tintos', 'imagenes/vinostintos.jpg'),
(21, 15, 'C. Vodka', 'imagenes/vodkas.jpg'),
(22, 15, 'C. Rones', 'imagenes/rones.jpg'),
(23, 15, 'C. Brandys', 'imagenes/brandys.jpg'),
(24, 15, 'C.Tequilas', 'imagenes/tequilas.jpg'),
(25, 16, 'Margaritas Chope', 'imagenes/margarita.jpg'),
(26, 16, 'Cocteles Tropicales', 'imagenes/tropicales.jpg'),
(27, 16, 'Mojitos Chope', 'imagenes/mojitos.jpg'),
(28, 16, 'Cremosos', 'imagenes/cremosos.jpg'),
(29, 16, 'Calientes', 'imagenes/calientes.jpg'),
(30, 16, 'Cocteles Clasicos', 'imagenes/clasicos.jpg'),
(31, 16, 'Martinis', 'imagenes/martinis.jpg'),
(32, 6, 'SubCategoria Ejemplo', '../uploads/201093161334731.jpg'),
(34, 41, 'LUNES', 'imagenes/LUNES.jpg'),
(35, 41, 'MARTES', 'imagenes/MARTES.jpg'),
(36, 14, 'MEZCAL', 'imagenes/aceite.jpg'),
(37, 41, 'Viernes', '../uploads/'),
(38, 15, 'C. Mezcal', '../uploads/'),
(39, 41, 'JUEVES', '../uploads/'),
(40, 41, 'MIERCOLES', '../uploads/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_areas`
--

CREATE TABLE `tbl_areas` (
  `id_area` int(10) NOT NULL,
  `nom_area` varchar(200) NOT NULL,
  `largo` int(11) NOT NULL,
  `ancho` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_areas`
--

INSERT INTO `tbl_areas` (`id_area`, `nom_area`, `largo`, `ancho`) VALUES
(1, 'Area 1', 5, 5),
(2, 'Area 22', 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_areas_responsables`
--

CREATE TABLE `tbl_areas_responsables` (
  `id_area_responsable` int(100) NOT NULL,
  `nombre_area_responsable` varchar(100) NOT NULL,
  `nombre_encargado` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_areas_responsables`
--

INSERT INTO `tbl_areas_responsables` (`id_area_responsable`, `nombre_area_responsable`, `nombre_encargado`) VALUES
(4, 'Cocina_carne', 'Chef Uriel'),
(5, 'Cocina_abarrotes', 'Chef Uriel'),
(6, 'Cocina_Utencilios', 'Chef Uriel'),
(7, 'Barra_botellas', 'Miguel Sanchez'),
(8, 'Barra_cerveza', 'Miguel Sanchez'),
(18, 'Barra_refresco', 'Miguel Perez'),
(12, 'Barra_utencilios', 'Miguel Sanchez'),
(17, 'Piso', 'Victor Villegas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mesas`
--

CREATE TABLE `tbl_mesas` (
  `id_mesa` int(100) NOT NULL,
  `nom_mesa` varchar(100) NOT NULL,
  `id_area` int(100) NOT NULL,
  `nom_area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mesas`
--

INSERT INTO `tbl_mesas` (`id_mesa`, `nom_mesa`, `id_area`, `nom_area`, `status`) VALUES
(1, '1', 1, 'Area 1', ''),
(2, '2', 1, 'Area 1', ''),
(3, '3', 1, 'Area 1', ''),
(4, '4', 1, 'Area 1', ''),
(5, '5', 1, 'Area 1', ''),
(6, '6', 1, 'Area 1', ''),
(7, '7', 1, 'Area 1', ''),
(8, '8', 1, 'Area 1', ''),
(9, '9', 1, 'Area 1', ''),
(10, '101', 2, 'Area 22', ''),
(11, '102', 2, 'Area 22', ''),
(12, '103', 2, 'Area 22', ''),
(13, '104', 2, 'Area 22', ''),
(14, '105', 2, 'Area 22', ''),
(15, '106', 2, 'Area 22', ''),
(16, '107', 2, 'Area 22', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_meseros`
--

CREATE TABLE `tbl_meseros` (
  `id_mesero` int(11) NOT NULL,
  `tx_nombre` varchar(50) NOT NULL,
  `tx_apellidoPaterno` varchar(50) DEFAULT NULL,
  `tx_apellidoMaterno` varchar(50) DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `tx_correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) NOT NULL,
  `tx_username` varchar(50) DEFAULT NULL,
  `dt_registro` datetime DEFAULT NULL,
  `pw` varchar(100) NOT NULL,
  `imagen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_meseros`
--

INSERT INTO `tbl_meseros` (`id_mesero`, `tx_nombre`, `tx_apellidoPaterno`, `tx_apellidoMaterno`, `direccion`, `tx_correo`, `telefono`, `tx_username`, `dt_registro`, `pw`, `imagen`) VALUES
(2, 'juan', 'perez', 'perez', 'centroamerica', 'union@union.com', '123', 'juan', NULL, '1234', ''),
(3, 'edgar', NULL, NULL, 'nopal', 'nopal@nopal.com', '123', 'edgar', NULL, '123', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_usuario` int(11) NOT NULL,
  `tx_nombre` varchar(50) NOT NULL,
  `tx_apellidoPaterno` varchar(50) DEFAULT NULL,
  `tx_apellidoMaterno` varchar(50) DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `tx_correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) NOT NULL,
  `tx_username` varchar(50) DEFAULT NULL,
  `id_TipoUsuario` int(11) DEFAULT NULL,
  `dt_registro` datetime DEFAULT NULL,
  `pw` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imagen` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`id_usuario`, `tx_nombre`, `tx_apellidoPaterno`, `tx_apellidoMaterno`, `direccion`, `tx_correo`, `telefono`, `tx_username`, `id_TipoUsuario`, `dt_registro`, `pw`, `imagen`) VALUES
(10, 'Administrador', 'General', 'Pozole', '', 'emedinas@live', '', '12345', 1, '2015-01-29 14:58:44', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(74, 'Mesero2', 'Mesero2', 'Mesero2', 'meserolandia', 'mesero2@gmail.com', '12345', '09876', 2, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '../uploads/cabecera.jpg'),
(69, 'Xochitl ', 'Meneses', 'Mendoza', 'Allende', 'mendozina@hotmail.com', '12345', '1234', 3, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '../uploads/cabecera.jpg'),
(72, 'Inventarios', 'Inventario p', 'inventario m', 'Calle Inventario', 'inventario@inventario.com', '123456789', '1212', 4, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '../uploads/28 dias.jpg'),
(73, 'Mesero', 'Mesero', 'Mesero', 'mesero', 'mesero@gmail.com', '123456', '0987', 2, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '../uploads/cabecera.jpg'),
(75, 'Yesi', 'Moran', 'PeÃ±a', 'Domicilio Conocido', 'gte.choperiaocotlan@outlook.es', '4620895', '061115', 1, NULL, '6271faadeedd7626d661856b7a004e27', '../uploads/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id_venta` int(100) NOT NULL,
  `N_venta` int(100) NOT NULL,
  `comandas` varchar(100) NOT NULL,
  `mesa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `usuarios` varchar(200) NOT NULL,
  `TotalNeto` double NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `parallevar` varchar(100) NOT NULL,
  `numpersonas` int(11) NOT NULL,
  `cortesia` varchar(100) NOT NULL,
  `tarjeta` double NOT NULL,
  `efectivo` double NOT NULL,
  `metodo_pago` varchar(100) NOT NULL,
  `propina` double NOT NULL,
  `descuento` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id_venta`, `N_venta`, `comandas`, `mesa`, `area`, `usuarios`, `TotalNeto`, `hora`, `status`, `parallevar`, `numpersonas`, `cortesia`, `tarjeta`, `efectivo`, `metodo_pago`, `propina`, `descuento`) VALUES
(1, 1, ' 4', '1', 'Area 1', 'Administrador', 590, '2016-12-08 19:45:10', 'Pagado', '', 0, '', 0, 0, '', 649, 0),
(2, 2, '', '1', 'Area 1', '', 0, '2016-12-08 19:45:29', 'Pagado', '', 0, '', 0, 0, '', 0, 0),
(3, 3, '', '1', 'Area 1', '', 0, '2016-12-08 19:39:29', 'Impreso', '', 0, '', 0, 0, '', 0, 0),
(4, 4, ' 5', '2', 'Area 1', 'Administrador', 56, '2016-12-08 19:40:27', 'Impreso', '', 0, '', 0, 0, '', 62, 0),
(5, 5, '', '2', 'Area 1', '', 0, '2016-12-08 19:42:42', 'Impreso', '', 0, '', 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_cancelados`
--

CREATE TABLE `tickets_cancelados` (
  `id_venta` int(100) NOT NULL,
  `N_venta` int(100) NOT NULL,
  `comandas` varchar(100) NOT NULL,
  `mesa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `usuarios` varchar(200) NOT NULL,
  `TotalNeto` double NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `tarjeta` double NOT NULL,
  `efectivo` double NOT NULL,
  `metodo_pago` varchar(100) NOT NULL,
  `propina` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

CREATE TABLE `tipo_productos` (
  `id_producto` int(3) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `codigo_producto` varchar(100) NOT NULL,
  `precio_producto` double NOT NULL,
  `cantidad_resta_inventario` double NOT NULL,
  `unidad_medida` varchar(100) NOT NULL,
  `asignar_a` varchar(100) NOT NULL,
  `cantidad_resta_inventario2` double NOT NULL,
  `unidad_medida2` varchar(50) NOT NULL,
  `asignar_a2` varchar(100) NOT NULL,
  `cantidad_resta_inventario3` double NOT NULL,
  `unidad_medida3` varchar(50) NOT NULL,
  `asignar_a3` varchar(100) NOT NULL,
  `cantidad_resta_inventario4` double NOT NULL,
  `unidad_medida4` varchar(50) NOT NULL,
  `asignar_a4` varchar(100) NOT NULL,
  `cantidad_resta_inventario5` double NOT NULL,
  `unidad_medida5` varchar(50) NOT NULL,
  `asignar_a5` varchar(100) NOT NULL,
  `cantidad_resta_inventario6` double NOT NULL,
  `unidad_medida6` varchar(50) NOT NULL,
  `asignar_a6` double NOT NULL,
  `mostrar_en` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `subcat` int(20) NOT NULL,
  `area` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_productos`
--

INSERT INTO `tipo_productos` (`id_producto`, `nombre_producto`, `codigo_producto`, `precio_producto`, `cantidad_resta_inventario`, `unidad_medida`, `asignar_a`, `cantidad_resta_inventario2`, `unidad_medida2`, `asignar_a2`, `cantidad_resta_inventario3`, `unidad_medida3`, `asignar_a3`, `cantidad_resta_inventario4`, `unidad_medida4`, `asignar_a4`, `cantidad_resta_inventario5`, `unidad_medida5`, `asignar_a5`, `cantidad_resta_inventario6`, `unidad_medida6`, `asignar_a6`, `mostrar_en`, `imagen`, `subcat`, `area`) VALUES
(1, 'Copa Buchanas 12', '3000', 110, 0.06, '3', '50196388', 2, 'Pieza', '09217197120', 0, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(19, 'Copa Courvoisier vs', '3015', 105, 0.06, '3', '3049197110076', 2, 'Pieza', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 17, 1),
(3, 'Copa Buchanans 18', '3001', 200, 0.06, '3', '50196913', 2, 'Pieza', '09217197120', 0, '0', '7501055300075', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/jarabe natural.jpg', 14, 1),
(5, 'Copa Buchanans Master', '3002', 116, 0.06, '3', '5000196003774', 2, 'Pieza', '09217197120', 0, '0', '7501055300075', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/jarabe natural.jpg', 14, 1),
(6, 'Copa Chivas Regal 12 Años', '3003', 110, 0.06, '3', '080432400395', 2, 'Pieza', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 1),
(7, 'Copa Chivas Regal 18 Años', '3004', 200, 0.06, '3', '5000299225028', 2, 'Pieza', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 1),
(9, 'Copa Black Label', '3006', 94, 0.06, '3', '5000267024004', 2, 'Pieza', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/', 14, 1),
(65, 'Anis Sambuca Blanco 700ml', '6025', 726, 0.7, '3', '3035541001213', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 33, 1),
(11, 'Copa Red Label', '3006', 72, 0.06, '3', '5000267014074', 2, 'Pieza', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 1),
(12, 'Copa JB', '3008', 66, 0.06, '3', '5010103800310', 2, 'Pieza', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 1),
(13, 'Copa Old Parr 12', '3009', 94, 0.06, '3', '5000281003160', 2, 'Pieza', '09217197120', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 1),
(14, 'Copa Baileys', '3010', 65, 0.06, '3', '5011013100132', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 15, 1),
(15, 'Copa Licor Galliano', '3012', 72, 0.06, '3', '8716000967169', 1, '2', '09217197120', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 15, 1),
(16, 'Copa Licor 43', '3013', 83, 0.06, '3', '8410221110075', 1, '2', '09217197120', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 15, 1),
(17, 'Copa Frangelico', '3011', 72, 0.06, '3', '8004160660304', 1, '2', '09217197120', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 15, 1),
(18, 'Copa Strega', '3014', 83, 0.06, '3', '5001', 1, '2', '09217197120', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 15, 1),
(20, 'Copa Martell vs', '3016', 100, 0.06, '3', '080432403716', 2, 'Pieza', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 17, 1),
(21, 'Copa Cadenas', '3017', 55, 0.06, '3', '8411183199061', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 18, 1),
(22, 'Copa  Chinchon Dulce', '3018', 55, 0.06, '3', '8410023172240', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 18, 1),
(23, 'Copa Chinchon  Seco', '3019', 55, 0.06, '3', '8410023172264', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 18, 1),
(24, 'Copa Domec Dulce', '3020', 39, 0.06, '3', '7501003692139', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 18, 1),
(25, 'Copa Domec Seco', '3021', 39, 0.06, '3', '7501003692146', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 18, 1),
(26, 'Copa Sambuca Negro', '3023', 66, 0.06, '3', '8716000966452', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 18, 1),
(27, 'Copa Sambuca Blanco', '3022', 61, 0.06, '3', '3035541001213', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 18, 1),
(28, 'Whisky Buchanan`s 12 750ml', '6001', 1320, 0.75, '3', '50196388', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(29, 'Whisky Buchanan`s 18 750ml', '6002', 2376, 0.75, '3', '50196913', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(30, 'Copa Beefeater', '3024', 83, 0.06, '3', '5000329002216', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 16, 1),
(31, 'Whisky Buchanan`s Master 750ml', '6003', 1386, 0.75, '3', '5000196003774', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(32, 'Whisky Chivas Regal 12 750ml', '6004', 1320, 0.75, '3', '080432400395', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(33, 'Copa Tanqueray', '3025', 72, 0.06, '3', '5002', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 16, 1),
(34, 'Whisky Chivas Regal 18 750ml', '6005', 2376, 0.75, '3', '5000299225028', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(36, 'Copa Casillero Del Diablo', '3026', 61, 0.12, '3', '7804320303178', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 20, 1),
(38, 'Whisky Johnie Walker Red Label 750ml', '6007', 858, 0.75, '3', '5000267014074', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(39, 'Copa Concha y Toro Merlot', '3027', 44, 0.12, '3', '5003', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 20, 1),
(40, 'Whisky Justerini JB 750ml', '6008', 792, 0.75, '3', '5010103800310', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(41, 'Whisky Old Parr 12 750ml', '6009', 1122, 0.75, '3', '5000281003160', 5, 'Pieza', '0001', 0, '3', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 3, 1),
(42, 'Licor Bailey`s 750 ml', '6010', 790, 0.75, '3', '5011013100132', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 4, 1),
(43, 'Licor Frangelico 700ml', '6011', 858, 0.7, '3', '8004160660304', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 4, 1),
(44, 'Licor Galliano 700 ml', '6012', 858, 0.7, '3', '8716000967169', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 4, 1),
(45, 'Licor 43 750 ml', '6013', 990, 0.75, '3', '8410221110075', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 4, 1),
(46, 'Licor Strega 750ml', '6014', 990, 0.75, '3', '5001', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 4, 1),
(47, 'Cognac Courvoisier V.S.O.P. 700 ml', '6015', 1540, 0.7, '3', '3049197210196', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 6, 1),
(48, 'Cognac Courvoisier V.S. 700 ml', '6016', 1254, 0.7, '3', '3049197110076', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 6, 1),
(49, 'Cognac Hennesy V.S.O.P. 700 ml', '6017', 1650, 0.7, '3', '3245990969402', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 6, 1),
(50, 'Cognac Martell V.S.O.P. 700 ml', '6017', 1540, 0.7, '3', '4607014056847', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 6, 1),
(51, 'Cognac Martell V.S.700 ml', '6018', 1320, 0.7, '3', '080432403716', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 6, 1),
(52, 'Copa La Cetto', '3028', 41, 0.12, '3', '5004', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 20, 1),
(54, 'Copa Absolut Azul', '3030', 72, 0.06, '3', '7312040017010', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(55, 'Copa Absolut Mandarin', '3031', 72, 0.06, '3', '7312040050758', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(56, 'Copa Absolut Mango', '3032', 72, 0.06, '3', '7312040180752', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(57, 'Copa Absolut Raspberry', '3033', 72, 0.06, '3', '7312040040759', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(58, 'Anis Chinchon Dulce 1L', '6019', 660, 1, '3', '8410023172240', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 33, 1),
(59, 'Copa Ciroc ', '3034', 110, 0.06, '3', '088076161863', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(60, 'Anis Cadenas 750 ml', '6020', 660, 0.75, '3', '8411183199061', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 33, 1),
(61, 'Anis Chinchon Seco 1L', '6021', 660, 1, '3', '8410023172264', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 33, 1),
(62, 'Copa Grey Goose', '3035', 101, 0.06, '3', '5010677850209', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(63, 'Anis Domeq Dulce 1L', '6022', 460, 1, '3', '7501003692139', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 33, 1),
(64, 'Anis Domeq Seco 1L', '6024', 460, 1, '3', '7501003692146', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 33, 1),
(66, 'Anis Sambuca Negro 700ml', '6026', 792, 0.7, '3', '8716000966452', 5, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 33, 1),
(67, 'Ginebra Beefeater 750ml', '6027', 900, 0.75, '3', '5000329002216', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 5, 1),
(68, 'Ginebra Tanqueray 750ml', '6028', 858, 0.75, '3', '5002', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 5, 1),
(69, 'Vino Tinto Casillero del Diablo 750ml', '6029', 550, 0.75, '3', '7804320303178', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '', 9, 1),
(70, 'Copa Smirnoff', '3036', 44, 0.06, '3', '082000000068', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(71, 'Vino Tinto Concha y Toro 750ml', '6030', 495, 0.75, '3', '5003', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '', 9, 1),
(72, 'Vino Tinto LaCetto 750ml', '6032', 400, 0.75, '3', '5004', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 9, 1),
(73, 'Copa Stolichnaya', '3037', 72, 0.06, '3', '4750021000157', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(75, 'Copa Wyborowa', '3038', 66, 0.06, '3', '5900685006050', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 21, 1),
(76, 'Vodka Absolut Azul 750ml', '6034', 858, 0.75, '3', '7312040017010', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(77, 'Vodka Absolut Mandarin 750ml', '6035', 858, 0.75, '3', '7312040050758', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(79, 'Vodka Absolut Mango 750ml', '6036', 858, 0.75, '3', '7312040180752', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(80, 'Vodka Absolut Raspberry 750ml', '6037', 858, 0.75, '3', '7312040040759', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(81, 'Copa Appleton Estate', '3040', 55, 0.06, '3', '7501035020207', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 22, 1),
(82, 'Vodka Ciroc 750ml', '6038', 1320, 0.75, '3', '088076161863', 5, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(83, 'Copa Bacardi Blanco', '3041', 44, 0.06, '3', '7501008613122', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 22, 1),
(84, 'Vodka Grey Goose', '6039', 1210, 0.75, '3', '5010677850209', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(85, 'Vodka Smirnoff 750ml', '6040', 528, 0.75, '3', '082000000068', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(86, 'Vodka Stolichnaya 750ml', '6041', 858, 0.75, '3', '4750021000157', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 10, 1),
(87, 'Vodka Wyborowa 750ml', '6042', 825, 0.75, '3', '5900685006050', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '', 10, 1),
(88, 'Copa Bacardi Solera', '3042', 55, 0.06, '3', '5006', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 22, 1),
(89, 'Ron Appleton Especial 750ml', '6043', 660, 0.75, '3', '7501035020429', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(90, 'Copa Capitan Morgan', '3043', 49, 0.06, '3', '082000747345', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 22, 1),
(91, 'Ron Appleton Estate 750ml', '6044', 660, 0.75, '3', '7501035020207', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(92, 'Copa Havana Club 7 AÃƒÂ±os', '3044', 66, 0.06, '3', '8501110080446', 1, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 22, 1),
(93, 'Ron Bacardi Blanco 750ml', '6045', 528, 0.75, '3', '7501008613122', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(94, 'Ron Bacardi Solera 750ml', '6046', 660, 0.75, '3', '5006', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(95, 'Copa Flor De CaÃƒÂ±a 7 aÃƒÂ±os', '3044', 60, 0.06, '3', '507', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 22, 1),
(96, 'Ron Captain Morgan 750ml', '6047', 594, 0.75, '3', '082000747345', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(98, 'Ron Flor de CaÃƒÂ±a 7 750ml', '6049', 660, 0.75, '3', '507', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(99, 'Copa  Matusalem Clasico', '3047', 50, 0.06, '3', '7501035045019', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 22, 1),
(100, 'Ron Havana Club 7 aÃƒÂ±os 750ml', '6050', 770, 0.75, '3', '8501110080446', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(102, 'Ron Matusalem ClÃƒÂ¡sico 750ml', '6052', 600, 0.75, '3', '7501035045019', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(103, 'Ron Zacapa 23 750ml', '6053', 1210, 0.75, '3', '5007', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 11, 1),
(104, 'Copa Magno', '3049', 69, 0.06, '0', '8410337001083', 2, '0', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 23, 1),
(105, 'Brandy Carlos I 700ml', '6054', 1320, 0.7, '3', '5008', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 12, 1),
(106, 'Brandy Magno  700ml', '6055', 830, 0.7, '3', '8410337001083', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 12, 1),
(107, 'Brandy Terry Centebario 700ml', '6056', 726, 0.7, '3', '8410162011028', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 12, 1),
(108, 'Brandy Torres 5 700ml', '6057', 726, 0.7, '3', '8410113000019', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 12, 1),
(109, 'Copa Terry Centenario', '3051', 60, 0.06, '0', '8410162011028', 2, '0', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 23, 1),
(110, 'Brandy Torres 10 700ml', '6058', 924, 0.7, '3', '8410113000071', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 12, 1),
(111, 'Brandy Torres 20 700ml', '6059', 1265, 0.7, '3', '1001', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 12, 1),
(112, 'Copa Torres 5', '3052', 60, 0.06, '0', '8410113000019', 2, '0', '09217197120', 0, '0', '7501055300075', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 23, 1),
(113, 'Tequila Azul 700ml', '6060', 594, 0.7, '3', '7501048840205', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(114, 'Copa Torres 10', '3053', 77, 0.06, '0', '8410113000071', 2, '0', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 23, 1),
(115, 'Tequila Cazadores Reposado 750ml', '6061', 831, 0.75, '3', '7501171600028', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(116, 'Tequila Centenario Reposado 700ml', '6062', 831, 0.7, '3', '7501048810208', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(117, 'Copa Torres 20', '3054', 105, 0.06, '0', '1001', 2, '0', '09217197120', 0, '0', '7501059276369', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 23, 1),
(118, 'Tequila Cien AÃƒÂ±os Azul 750ml', '6063', 528, 0.75, '3', '7501005616898', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(119, 'Copa Teq Azul', '3055', 44, 0.06, '0', '7501005616898', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(120, 'Tequila Jose Cuervo Especial 695ml', '6064', 660, 0.695, '0', '7501035010550', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(121, 'Copa Cazadores Reposado', '3056', 70, 0.06, '0', '7501171600028', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(122, 'Copa Centenario Reposado', '3057', 70, 0.06, '0', '7501048810208', 1, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(123, 'Tequila Jose Cuervo Tradicional 695ml', '6065', 924, 0.695, '3', '7501035012028', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(124, 'Tequila Don Julio Blanco 750ml', '6066', 924, 0.75, '0', '674545000018', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(125, 'Tequila Don Julio Reposado 750ml', '6067', 990, 0.75, '3', '674545000049', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(126, 'Tequila Herradura Reposado 700ml', '6068', 990, 0.7, '3', '744607002103', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(127, 'Tequila Hornitos Reposado 700ml', '6069', 858, 0.7, '3', '7501005600750', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(128, 'Tequila Herradura AÃƒÂ±ejo 700ml', '6070', 990, 0.7, '3', '5011', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '../uploads/botellas.jpg', 13, 1),
(129, 'Copa 100 AÃƒÂ±os Azul', '3058', 44, 0.06, '0', '7501005616898', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(130, 'Brandy Terrry Centenario', '7001', 726, 0.18, '0', '8410162011028', 2, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/', 0, 1),
(131, 'Copa Cuervo Especial', '3059', 55, 0.06, '0', '7501035010550', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(132, 'Copa Cuervo Tradicional', '3060', 77, 0.06, '3', '7501035012028', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(133, 'Brandy Torres 5', '7002', 726, 0.18, '0', '8410113000019', 2, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/cuba.jpg', 0, 1),
(134, 'Ron Bacardi Blanco', '7003', 528, 0.18, '0', '7501008613122', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/cuba.jpg', 0, 1),
(136, 'Ron Captain Morgan', '7004', 594, 0.18, '3', '082000747345', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/botellas.jpg', 0, 1),
(138, 'Tequila Azul ', '7005', 594, 0.18, '3', '7501048840205', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/botellas.jpg', 0, 1),
(139, 'Copa Herradura AÃƒÂ±ejo', '3063', 83, 0.06, '0', '5011', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(140, 'Copa Herradura Reposado', '3064', 83, 0.06, '0', '744607002103', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(141, 'Copa Hornitos Reposado', '3065', 72, 0.06, '0', '7501005600750', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 24, 1),
(142, 'Tequila Cuervo Tradicional', '7006', 77, 0.18, '3', '7501035012028', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/botellas.jpg', 0, 1),
(144, 'Whisky Johnie Walker Red Label', '7008', 858, 0.18, '3', '5000267014074', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/botellas.jpg', 0, 1),
(145, 'Vodka Smirnoff ', '7009', 528, 0.18, '3', '082000000068', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/botellas.jpg', 0, 1),
(146, 'Vodka Stolichnaya', '7010', 858, 0.18, '3', '4750021000157', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '29', '../uploads/botellas.jpg', 0, 1),
(147, 'Chope Tarro Clara 355ml', '8001', 35, 0.355, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cerveza.jpg', 0, 1),
(148, ' Chope Tarro Obscura 355ml', '8002', 35, 0.355, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezao.jpg', 0, 1),
(149, 'Chope Bola Clara 500ml', '8003', 45, 0.5, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cerveza.jpg', 0, 1),
(150, 'Chope Bola Obscura 500ml', '8004', 45, 0.5, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezao.jpg', 0, 1),
(151, 'Chope Tarro Clara 1L', '8005', 75, 1, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '', 0, 1),
(152, 'Chope Tarro Obscura 1L', '8006', 75, 1, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '', 0, 1),
(153, 'Jarra Chope Clara 1600ml', '8007', 150, 1.6, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cerveza.jpg', 0, 1),
(154, 'Jarra Chope Obscura 1600ml', '8008', 150, 1.6, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezao.jpg', 0, 1),
(155, 'Misil Clara 3L', '8009', 250, 3, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cerveza.jpg', 0, 1),
(156, 'Misil Obscura 3L', '8010', 250, 3, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezao.jpg', 0, 1),
(157, 'Triton Clara 5L', '8011', 350, 5, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cerveza.jpg', 0, 1),
(158, 'Triton Obscura 5L', '8012', 350, 5, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezao.jpg', 0, 1),
(159, 'Triton Paquete con Alitas Clara 5L', '8013', 500, 5, '3', '56575859', 20, '2', '114', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cerveza.jpg', 0, 1),
(160, 'Triton Paquete con Alitas Obscura 5L', '8014', 500, 5, '3', '1009565656', 20, '2', '114', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cerveza.jpg', 0, 1),
(161, 'Michelada', '8015', 5, 1, '2', '70809026', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '10', '../uploads/cerveza.jpg', 0, 1),
(162, 'Cubana', '8016', 5, 1, '2', '70809027', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '10', '../uploads/cerveza.jpg', 0, 1),
(163, 'Ojos Rojos', '8017', 8, 1, 'Pieza', '70809028', 0, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '10', '../uploads/cerveza.jpg', 0, 1),
(164, 'Diabla', '8018', 5, 1, '2', '70809029', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '10', '../uploads/cerveza.jpg', 0, 1),
(165, 'Especial de Camaron', '8019', 50, 0.08, '1', '67672', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '10', '../uploads/cerveza.jpg', 0, 1),
(166, ' Caballito Teq Azul  ', '3066', 45, 0.06, '3', '7501048840205', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(167, 'Cerveza Corona', '8020', 30, 1, '2', '7501064101410', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(168, 'Cerveza Victoria', '8021', 30, 1, '2', '7501064115400', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(169, 'Cerveza Corona Ligth', '8022', 30, 1, '2', '7501064192562', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(170, 'Cerveza Negra Modelo', '8023', 30, 1, '2', '75027285', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(171, 'Cerveza Modelo Especial', '8024', 30, 1, '2', '75027278', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(172, 'Cerveza Budweisser', '8025', 39, 1, '2', '018200001635', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(173, 'Cerveza Budligth', '6031', 39, 1, '2', '018200002793', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(174, 'Cerveza Odulus', '8050', 39, 1, '2', '018200002267', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', '../uploads/cervezas.jpg', 0, 1),
(175, 'Caballito Cazadores Reposado', '3067', 63, 0.06, '3', '7501171600028', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(176, 'Ojos Rojos Clara', '9001', 43, 0.355, '3', '56575859', 1, '2', '70809028', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cerveza.jpg', 0, 1),
(177, 'Ojos Rojos Obscura', '9002', 43, 0.355, '3', '1009565656', 1, '2', '70809028', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cervezao.jpg', 0, 1),
(178, 'Diabla Chope Clara', '9002', 47, 0.355, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cerveza.jpg', 0, 1),
(179, 'Diabla Chope Obscura', '9003', 47, 0.355, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cervezao.jpg', 0, 1),
(180, 'Michelada Especial Clara', '9004', 90, 0.355, '3', '56575859', 0.09, '1', '67672', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cerveza.jpg', 0, 1),
(181, 'Michelada Especial Obscura', '9005', 90, 0.355, '3', '1009565656', 0.09, '1', '67672', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cervezao.jpg', 0, 1),
(182, 'Tarro Volteado Clara', '9006', 48, 0.355, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cerveza.jpg', 0, 1),
(183, 'Tarro Volteado Obscura', '9007', 48, 0.355, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cervezao.jpg', 0, 1),
(184, 'Tarro Volteado con camarones Clara', '9008', 90, 0.355, '0', '56575859', 0.08, 'Kilogramos', '67672', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cerveza.jpg', 0, 1),
(185, 'Tarro Volteado con camarones Obscura', '9009', 90, 0.355, '0', '1009565656', 0.08, 'Kilogramos', '67672', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '30', '../uploads/cervezao.jpg', 0, 1),
(186, 'Caballito Centenario Reposado ', '3057', 63, 0.06, '3', '7501048810208', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(187, 'Caballito 100 AÃƒÂ±os  Azul', '30678', 40, 0.06, '3', '7501005616898', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(188, 'Caballito Cuervo Especial', '3069', 50, 0.06, '3', '7501035010550', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(189, 'Naranjada Natural', '10101', 28, 0.06, '3', '7501043700504', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(190, 'Naranjada Mineral', '10102', 28, 0.06, '0', '7501043700504', 0.12, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(191, 'Limonada', '10103', 28, 0.06, '0', '7501043700504', 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(192, 'Refresco Coca Cola', '10104', 28, 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(193, 'Refresco 7up', '10105', 28, 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(194, 'Refresco Sprite', '10106', 28, 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(195, 'Refresco Squirt', '10107', 28, 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(196, 'Caballito Cuervo Tradicional', '3060', 70, 0.06, '3', '7501035012028', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(197, 'Refresco Mirinda', '10108', 28, 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(198, 'Agua Mineral 355ml', '10109', 28, 1, '0', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(199, 'Caballito Don Julio Blanco ', '3061', 65, 0.06, '3', '674545000018', 0, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(201, 'Caballito Don Julio Reposado ', '3062', 75, 0.06, '3', '674545000049', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(202, 'Agua Embotellada 355ml', '10112', 28, 1, '2', '7501059200067', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(203, 'Jugo Arandano', '991', 30, 0.355, '3', '078742057279', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '', 0, 1),
(204, 'Caballito Herradura AÃƒÂ±ejo', '3063', 75, 0.06, '3', '5011', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(205, 'Jugo Uva', '992', 30, 0.355, '3', '7501013122145', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(206, 'Jugo Manzana', '993', 30, 0.355, '3', '7501013122190', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(214, 'PiÃ±ada', '998', 45, 0.06, '4', '4002', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(208, 'Jugo Naranja', '994', 30, 0.355, '4', '7501013122138', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(209, 'Jugo Pina', '995', 30, 0.355, '4', '7501013122114', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(210, 'Caballito Herradura Reposado', '3064', 75, 0.06, '3', '744607002103', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(212, 'Caballito Hornitos Reposado', '3065', 65, 0.06, '3', '7501005600750', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/caballito.jpg', 24, 1),
(213, 'Conga Tropical', '997', 35, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(215, 'Clamato Natural', '999', 40, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '../uploads/bebidas.jpg', 0, 1),
(216, 'Misil 2x1 Clara', '6000', 250, 6, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/barril.jpg', 0, 1),
(217, 'Misil 2x1 Obscura', '6001', 250, 6, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/barril.jpg', 0, 1),
(218, 'Jugo de Carne', '20201', 55, 0.052, '1', '150', 0.038, 'Kilogramos', '4444', 0.0105, 'Kilogramos', '55555', 0.009, 'Litros', '00004', 0.015, 'Kilogramos', '00006', 0.0031, '4', 0, '1', '', 0, 2),
(219, 'Sopa del Dia', '90901', 38, 0, 'Kilogramos', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '1', '../uploads/comida.jpg', 0, 2),
(228, 'Margarita 2x1', '0002', 74, 0.12, '3', '7501171600028', 0.06, '4', '7501043700504', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/', 0, 1),
(221, 'Promocion Alitas', '6002', 5, 1, '2', '114', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alitas.jpg', 0, 2),
(430, 'Camaron Para Pelar', '1589924', 165, 0.3, 'Kilogramos', '2002', 0.04, '1', '00008', 0.125, '2', '00032', 0.03, '1', '00022', 0.06, '1', '00015', 0.03, '1', 0, '37', '../uploads/', 0, 2),
(223, 'Cumple Torres 5', '6004', 0, 0.7, '3', '8410113000019', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(224, 'Cumple Tequila Azul', '6005', 0, 0.7, '3', '7501048840205', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(225, 'Cumple Smirnof', '6006', 0, 0.75, '3', '082000000068', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(226, 'Cumple Bacardi Blanco', '6006', 0, 0.75, '2', '7501008613122', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(227, 'Pastel Cumple', '6005', 0, 1, '2', '102938', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/pastel.jpg', 0, 2),
(229, 'Tarro 2x1 Clara', '0003', 35, 0.71, '3', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/barril.jpg', 0, 1),
(230, 'Coctel de Camaron Chico', '9010', 80, 0.1, 'Kilogramos', '67671', 0.13, '4', '55555555', 0.06, '1', '00015', 2, '2', '00016', 0, '0', '', 0, '0', 0, '1', '../uploads/comida.jpg', 0, 2),
(231, 'Tarro 2x1 Obscura', '0005', 35, 0.71, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/barril.jpg', 0, 1),
(232, 'Coctel de Camaron Grande', '9011', 120, 0.15, '1', '67671', 0.25, '4', '55555555', 0.01, '1', '00015', 2, '2', '00016', 0, '0', '', 0, '0', 0, '1', '../uploads/carne.jpg', 0, 2),
(234, 'PROM V/S Torres 10', '0006', 1200, 1.4, '3', '8410113000071', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(235, 'PROM V/S Bacardi Blanco', '0007', 650, 1.5, '3', '7501008613122', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(236, 'Mollejas de Res a la Parrilla 300gr', '9013', 95, 0.3, 'Kilogramos', '2004', 0.04, '1', '00008', 0.004, '1', '00011', 0, '0', '', 0, '0', '', 0, '0', 0, '1', '../uploads/comida.jpg', 0, 2),
(237, 'PROM V/S Etiq. Roja', '0008', 1100, 1.5, '3', '5000267014074', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(238, 'Agua Chile', '9014', 82, 0.13, 'Kilogramos', '67671', 0.13, '1', '00026', 0.03, '1', '00027', 3, '2', '00016', 0.025, '1', '00030', 0.0075, '1', 0, '1', '../uploads/comida.jpg', 0, 2),
(239, 'PROM V/S Stolichnaya', '0009', 1100, 1.5, '3', '4750021000157', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(240, 'PROM V/S Smirnof', '0009', 650, 1.5, '3', '082000000068', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(241, 'PROM V/S Cuervo Tradicional', '0010', 1200, 1.5, '3', '7501035012028', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(242, 'Lunes Whiskero', '0011', 750, 0.75, '3', '5000267014074', 0.5, 'Kilogramos', '2001', 3, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(243, 'Martes Amigos  Etiq.Roja', '0012', 595, 0.75, '3', '5000267014074', 0.6, '1', '2001', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(244, 'Chorizo Argentino 180gr', '9018', 95, 2, 'Pieza', '2003', 0.09, '1', '00051', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '3', '../uploads/comida.jpg', 0, 2),
(245, 'Chistorra 180gr', '9016', 95, 0.18, '1', '107', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '3', '../uploads/comida.jpg', 0, 2),
(246, 'Martes Amigos  Torres 5', '0013', 595, 0.75, '3', '8410113000019', 0.6, '1', '2001', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(247, 'Martes Amigos  Teq 100 AÃƒÂ±os', '0014', 595, 0.75, '3', '7501005616898', 0.6, '1', '2001', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '13', '../uploads/alcohol.jpg', 0, 1),
(248, 'Arrachera a la Parrilla 300gr', '9019', 220, 1, '2', '7595', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '3', '../uploads/comida.jpg', 0, 2),
(249, 'Bife de Chorizo 350gr', '9020', 270, 1, '2', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '3', '../uploads/comida.jpg', 0, 2),
(251, 'Top Sirlion 350gr', '9021', 270, 1, 'Pieza', '102', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '3', '../uploads/comida.jpg', 0, 2),
(253, 'Asado de Tira 400gr', '9024', 300, 2, '2', '103', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '3', '../uploads/comida.jpg', 0, 2),
(254, 'Cheesecake Cookie', '0016', 55, 1, '2', '102938', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '8', '../uploads/pastel.jpg', 0, 2),
(256, '3 Tacos De Arrachera', '80801', 85, 0.15, 'Kilogramos', '2001', 0.035, '1', '00051', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '2', '../uploads/IMG-20150212-WA0001.jpg', 0, 2),
(257, '3 Tacos Bife', '80802', 90, 0.43, '2', '101', 0.06, 'Kilogramos', '00051', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '2', '../uploads/IMG-20150212-WA0001.jpg', 0, 2),
(259, 'Chope', '80804', 150, 0.3, 'Kilogramos', '2001', 0.1, 'Kilogramos', '2006', 0.05, '1', '00035', 0, '0', '', 0, '0', '', 0, '0', 0, '2', '../uploads/IMG-20150212-WA0002.jpg', 0, 2),
(260, 'Ensalada Cesar', '80805', 55, 0.125, '2', '00032', 0.005, '1', '00045', 0.015, '1', '00039', 0.05, '1', '00074', 0, '0', '', 0, '0', 0, '5', '../uploads/IMG-20150212-WA0006.jpg', 0, 2),
(261, 'Pollo Extra', '80806', 25, 0.1, 'Kilogramos', '106', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '21', '../uploads/pollo.jpg', 0, 2),
(454, 'Copa Litro Torres 5', '247865', 80, 0.09, '3', '8410113000019', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 39, 1),
(452, 'Copa  Mezcal Nuestra Soledad ', '12478565', 55, 0.06, '3', '7503011641437', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 38, 1),
(267, 'Queso Fundido Con Chorizo', '0016', 110, 0.18, 'Kilogramos', '00035', 0.05, '1', '00071', 0.09, '1', '00051', 1.12, '2', '2003', 0.5, '2', '00010', 0, '0', 0, '4', '../uploads/quesos.jpg', 0, 2),
(268, 'Queso Fundido Con Chistorra', '0017', 110, 0.1, 'Kilogramos', '107', 0.18, '1', '00035', 0.05, '1', '00071', 0.09, '1', '00051', 0, '0', '', 0, '0', 0, '4', '../uploads/quesos.jpg', 0, 2),
(269, 'Queso fundido Con Arrachera', '0018', 115, 0.1, 'Kilogramos', '2001', 0.18, '1', '00035', 0.05, '1', '00071', 0.09, '1', '00051', 0, '0', '', 0, '0', 0, '4', '../uploads/quesos.jpg', 0, 2),
(270, 'Hamburguesa 200gr', '0018', 88, 1, 'Pieza', '113', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '12', '../uploads/hamburgesa.jpg', 0, 2),
(271, 'Papas A La Francesa', '0019', 45, 0.25, 'Kilogramos', '14789', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '32', '', 0, 2),
(272, 'Banderillas De Salchicha Con Queso Manchego', '0020', 55, 0.07, '1', '00094', 0.1, 'Kilogramos', '00035', 0.18, 'Kilogramos', '14789', 0.05, 'Kilogramos', '00100', 0, '0', '', 0, '0', 0, '32', '../uploads/niÃƒÂ±od.jpg', 0, 2),
(273, 'Nugets', '0021', 66, 5, '2', '20011', 0.18, '1', '14789', 0.125, '2', '00032', 0, '0', '', 0, '0', '', 0, '0', 0, '32', '../uploads/niÃƒÂ±od.jpg', 0, 2),
(274, 'Parrillada Chope 1.200 kg', '0022', 450, 0.3, 'Kilogramos', '2001', 0.18, '1', '107', 1, 'Pieza', '103', 0.5, 'Pieza', '106', 1, 'Pieza', '2003', 0.1, '1', 0, '3', '../uploads/IMG-20150212-WA0005.jpg', 0, 2),
(275, 'Arrachera 1KG', '0023', 550, 1, 'Kilogramos', '2001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '3', '../uploads/IMG-20150212-WA0005.jpg', 0, 2),
(278, 'Paquete Parrillada 1.200gr Clara', '0026', 650, 0.3, 'Kilogramos', '2001', 0.18, 'Pieza', '107', 1, 'Pieza', '2003', 1, 'Pieza', '103', 5, 'Litros', '56575859', 0.15, '1', 0, '3', '../uploads/IMG-20150212-WA0005.jpg', 0, 2),
(279, 'Paquete Parrillada 1.200gr Obscura', '0026', 650, 0.3, 'Kilogramos', '2001', 0.18, 'Pieza', '107', 1, 'Pieza', '2003', 1, 'Pieza', '103', 5, 'Litros', '1009565656', 0.15, '1', 0, '3', '../uploads/IMG-20150212-WA0005.jpg', 0, 2),
(280, 'Plato Botanero', '0030', 190, 5, 'Pieza', '114', 0.13, '1', '2002', 0.3, '1', '123', 0.05, '1', '00054', 0.09, '1', '00036', 0.015, '4', 0, '11', '../uploads/IMG-20150212-WA0007.jpg', 0, 2),
(281, 'Dedos De Queso', '0031', 88, 0.18, 'Kilogramos', '00054', 0.01, '2', '00032', 0.015, '4', '00086', 0.18, '1', '14789', 0, '0', '', 0, '0', 0, '11', '../uploads/IMG-20150212-WA0007.jpg', 0, 2),
(282, 'Alitas', '0032', 138, 15, 'Pieza', '114', 0.05, '4', '00004', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '11', '../uploads/IMG-20150212-WA0004.jpg', 0, 2),
(437, 'Te', '158976', 25, 1, '2', '5872554', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '39', '../uploads/', 0, 1),
(285, 'Nachos Chope', '202042', 66, 0.15, 'Kilogramos', '098765432', 0.15, '1', '00092', 0.15, '1', '00062', 0.0225, '1', '00054', 0.0075, '1', '00008', 0.0075, '1', 0, '11', 'imagenes/bg1.jpg', 0, 2),
(293, 'Copa Jonhie Walker Red Label ', '505010', 72, 0.06, 'Litros', '5000267014074', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', 'imagenes/red label.jpg', 3, 1),
(294, 'Copa Jonhie Walker Black Label', '505011', 94, 0.06, 'Litros', '5000267024004', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', 'imagenes/black label.jpg', 3, 1),
(295, 'Copa Zacapa 23', '505012', 95, 0.06, 'Litros', '5007', 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', 'imagenes/copas.jpg', 22, 1),
(488, 'TAMARINDO', '9837264', 0, 0.03, '1', '00008', 0.0018, '1', '55555', 0.0018, '1', '00047', 0.0004, '1', '00009', 0.0006, '2', '00089', 0, '', 0, '46', '../uploads/', 0, 2),
(298, 'Guarnicion Guacamole', '505015', 40, 0.12, 'Kilogramos', '00015', 0.0075, '1', '00008', 0.0075, '1', '55555', 0.0075, '1', '00054', 0, '0', '', 0, '0', 0, '21', 'imagenes/guacamole.jpg', 0, 2),
(435, 'Cristaleria Tarro', '4648696', 50, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '44', '../uploads/', 0, 1),
(434, 'Cristaleria Vaso', '54965', 30, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '44', '../uploads/', 0, 1),
(433, 'Cristaleria Cenicero', '24756', 30, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '44', '../uploads/', 0, 1),
(432, 'Cafe Americano', '147932', 25, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '39', '../uploads/', 0, 1),
(431, 'Cafe Capuchino', '4789423', 35, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '39', '../uploads/', 0, 1),
(312, 'CHEESCAKE', '90017', 55, 1, '2', '102938', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '8', 'imagenes/POSTRES.jpg', 1, 2),
(472, 'Capucchinno / baileys', '47796', 65, 0.06, '3', '5011013100132', 0, '2', '7501064101410', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '39', '../uploads/', 0, 1),
(471, 'limonada a precio', '6872126', 11, 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '45', '../uploads/', 0, 1),
(470, 'Jugo Arandano litro', '567846', 65, 1, '3', '078742057279', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '31', '../uploads/', 0, 1),
(322, 'Salmon 200gr', '711', 148, 1, 'Pieza', '20015', 0.1, '1', '00044', 0.1, '1', '00046', 0.03, '1', '00038', 0, '0', '', 0, '0', 0, '37', 'imagenes/maricos.jpg', 0, 2),
(324, 'Filete De Pescado', '0000040', 110, 2, 'Pieza', '20014', 0.05, '1', '00008', 0.06, '1', '00015', 0.06, '1', '00022', 0, '0', '', 0, '0', 0, '37', 'imagenes/maricos.jpg', 0, 2),
(329, 'Espagueti A Los 4 Quesos', '0000045', 88, 0.2, 'Kilogramos', '2007', 0.1, '1', '00034', 0.2, '1', '00035', 0.2, '1', '00036', 0.24, '4', '00037', 0.02, '1', 0, '38', 'imagenes/botanas.jpg', 0, 2),
(330, 'Espagueti A La Bolognesa', '0000046', 95, 0.2, 'Kilogramos', '2007', 0.0075, 'Kilogramos', '00039', 0.015, 'Kilogramos', '00005', 0.15, '3', '222222', 0, '0', '', 0, '0', 0, '38', 'imagenes/botanas.jpg', 0, 2),
(333, 'Crepas Suzette', '0000056', 65, 1, '2', '0000055', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '8', 'imagenes/botanas.jpg', 2, 2),
(334, 'Crepas Cajeta', '0000057', 65, 1, '2', '0000055', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '8', 'imagenes/descarga.jpg', 2, 2),
(335, 'Fresas Jubilee', '0000058', 65, 0.2, '1', '00073', 0.02, '1', '00038', 0.03, '4', '7501043700603', 0.015, '4', '7501013122138', 0.015, '1', '00043', 0, '0', 0, '8', 'imagenes/descarga.jpg', 2, 2),
(336, 'Tarro clara 1 Lt', '8100', 75, 1, 'Litros', '56575859', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', 'imagenes/tarro.jpg', 0, 1),
(337, 'Cerveza Leon', '101015', 30, 1, '2', '0002', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', 'imagenes/tarro.jpg', 0, 1),
(338, 'Margarita Limon', '101016', 74, 0.06, '3', '00459', 0.03, '4', '7501043709705', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 25, 1),
(339, 'Margarita Mango', '101017', 74, 0.06, '3', '00459', 0.03, '4', '7501043707459', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 25, 1),
(340, 'Margarita Fresa', '101018', 74, 0.06, '3', '00459', 0.03, '4', '7501043709705', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 25, 1),
(341, 'Margarita Tamarindo', '101019', 74, 0.06, '3', '00459', 0.03, '4', '7501043709705', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 25, 1),
(342, 'Limonada Electrica', '101020', 54, 0.03, '3', '7501043707657', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 26, 1),
(343, 'Cascada', '101021', 86, 0.06, '3', '7501035015203', 0.03, '4', '7501043709354', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 26, 1),
(344, 'Bull Shoot', '101022', 86, 0.06, '3', '7501035015203', 0.355, '4', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 26, 1),
(345, 'Platers Punch', '101023', 79, 0.06, '3', '7501043712200', 0, '0', '7501043712200', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', 'imagenes/tarro.jpg', 26, 1),
(346, 'Splash Disarono', '101024', 86, 0.06, '3', '7501035020320', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 26, 1),
(347, 'Tequila Sunrise', '101025', 79, 0.06, '3', '00459', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/tarro.jpg', 26, 1),
(348, 'Kamikase', '101026', 74, 0.06, '3', '7501035015203', 0.03, '4', '7501043709705', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 26, 1);
INSERT INTO `tipo_productos` (`id_producto`, `nombre_producto`, `codigo_producto`, `precio_producto`, `cantidad_resta_inventario`, `unidad_medida`, `asignar_a`, `cantidad_resta_inventario2`, `unidad_medida2`, `asignar_a2`, `cantidad_resta_inventario3`, `unidad_medida3`, `asignar_a3`, `cantidad_resta_inventario4`, `unidad_medida4`, `asignar_a4`, `cantidad_resta_inventario5`, `unidad_medida5`, `asignar_a5`, `cantidad_resta_inventario6`, `unidad_medida6`, `asignar_a6`, `mostrar_en`, `imagen`, `subcat`, `area`) VALUES
(349, 'Clamato Preparado', '101027', 67, 0.06, '3', '7501035015203', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 26, 1),
(350, 'Whisky Shower', '101028', 79, 0.06, '3', '5010752000321', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 26, 1),
(351, 'Hpnotizame', '101029', 85, 0.06, '3', '736040011064', 0.03, '4', '7501043709354', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 26, 1),
(352, 'Mojito Clasico', '101030', 63, 0.06, '3', '7501043712200', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 27, 1),
(353, 'Mojito Estilo Menta Verde', '101031', 72, 0.06, '3', '7501043712200', 0.015, '4', '7501012600262', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 27, 1),
(354, 'Margarita Don Julio', '101032', 92, 0.06, '3', '674545000049', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 25, 1),
(355, 'Margarita Cazdores Reposado', '303133', 83, 0.06, '3', '7501171600028', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 25, 1),
(356, 'Mojito Menta Verde C/Habana Club', '101034', 81, 0.06, '3', '8501110080446', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 27, 1),
(357, 'Mojito Clasico C/Habana Club', '101035', 77, 0.06, '3', '8501110080446', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 27, 1),
(358, 'Alfonso XIII', '101036', 49, 0.06, '3', '7501003692368', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(359, 'A.B.C', '101037', 99, 0.03, '3', '7501035020320', 0.03, '4', '5011013100132', 0.03, '4', '080432403716', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(360, 'Orgasmo', '101038', 99, 0.03, '3', '7501035020320', 0.03, '4', '5011013100132', 0.03, '4', '7501003692368', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(361, 'Beso De Angel', '101040', 50, 0.06, '3', '7501003692368', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(362, 'Ruso Blanco', '101041', 60, 0.06, '3', '7501035015203', 0, '4', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(363, 'Ruso Negro', '101042', 60, 0.03, '3', '7501035015203', 0.03, '4', '7501003692368', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(364, 'Lamborghini', '101043', 117, 0.03, '3', '5011013100132', 0.015, '4', '7501043709354', 0.015, '4', '7501043706407', 0.015, '4', '7501003692368', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(365, 'Suspiro De Noche', '101044', 86, 0.03, '3', '7501043707657', 0.015, '4', '7501043708654', 0.03, '4', '089540468655', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(366, 'Dulce Fantasia', '101046', 81, 0.03, '3', '3104691015095', 0.03, '4', '7501043712200', 0.03, '4', '7501043709705', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(367, 'Pasion Roja', '101047', 86, 0.06, '3', '7501048801206', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(368, 'Melody', '101048', 86, 0.03, '3', '7501043707657', 0.03, '4', '736040011064', 0.03, '4', '7501035015203', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(369, 'Sueno verde', '101049', 72, 0.03, '3', '7501012600262', 0.03, '4', '7501035015203', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(370, 'Blue And Red', '101050', 90, 0.06, '3', '736040011064', 0.03, '4', '7501035015203', 0.015, '4', '7501043709354', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(371, 'Tupsi Shoot', '101051', 68, 0.06, '3', '089540468655', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(372, 'Crusta Sawere', '101053', 90, 0.03, '3', '7312040150755', 0.03, '4', '7501043707657', 0.015, '4', '7501012600262', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(373, 'Banana Nova', '101054', 77, 0.03, '3', '7501043708654', 0.03, '4', '7501035015203', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 28, 1),
(374, 'Carajillo', '101055', 81, 0.06, '3', '8410221110075', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 29, 1),
(375, 'Cucaracha', '101056', 68, 0.03, '3', '00459', 0.03, '4', '7501003692368', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 29, 1),
(376, 'Piedra', '101057', 64, 0.03, '3', '00459', 0.03, '4', '7501043706407', 0.015, '4', '7501012600132', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 29, 1),
(377, 'Sex On The Beach', '101058', 68, 0.06, '3', '7501035015203', 0.015, '4', '7501043707657', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(378, 'Luces De La Habana', '101059', 76, 0.06, '3', '089540468655', 0.015, '4', '7501012600446', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(379, 'Campari Americano', '101060', 69, 0.06, '3', '8000040002509', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 26, 1),
(380, 'Campari Italiano', '101061', 69, 0.06, '3', '8000040002509', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(381, 'Medias De Seda', '101062', 69, 0.06, '3', '7501035015043', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(382, 'Bloody Mary', '101063', 64, 0.06, '3', '7501035015203', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(383, 'Infu Gin Tonic', '101064', 64, 0.06, '3', '7501035015043', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(384, 'Tom Collins', '101066', 64, 0.06, '3', '7501035015043', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(385, 'PiÃ±a Colada', '101067', 76, 0.06, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', '', 30, 1),
(386, 'PiÃ±a Colada / Baileys', '101070', 81, 0.06, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', '', 30, 1),
(387, 'PiÃ±a Colada/ Frangelico', '101071', 99, 0.06, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', '', 30, 1),
(388, 'Martini Chocolate', '101072', 95, 0.03, '3', '7501035015203', 0.03, '4', '5011013100132', 0.03, '4', '5010677924009', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(389, 'Martini Zarzamora', '101073', 95, 0.03, '3', '7501035015203', 0.03, '4', '8410221110075', 0.03, '4', '5010677924009', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(390, 'Martini Manzana', '101074', 95, 0.06, '3', '7501035015203', 0.03, '4', '5010677924009', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(391, 'Martini Manhattan', '101076', 95, 0.06, '3', '5010752000321', 0.03, '4', '5010677914000', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(392, 'Martini Clasico', '101077', 95, 0.03, '3', '7501035015043', 0.06, '4', '5010677934008', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(393, 'Martini Cosmopolitan', '101078', 95, 0.06, '3', '7501035015203', 0.03, '4', '7501043709705', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(496, 'Copa Carlos l', '3544554', 110, 0.06, '2', '5008', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 23, 1),
(395, 'Martini  Poseidon', '101079', 95, 0.06, '3', '089540468655', 0.015, '4', '7501043709354', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(396, 'Martini Perfecto', '101080', 95, 0.045, '3', '5010677934008', 0.045, '4', '5010677914000', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(397, 'Martini Coco', '101081', 95, 0.075, '3', '7501043712200', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(398, 'Martini Dulce', '101082', 95, 0.045, '3', '7501035015043', 0.045, '4', '5010677914000', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(399, 'Martini Absolut Azul', '101083', 115, 0.06, '3', '7312040017010', 0.06, '4', '5010677914000', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '1', 'imagenes/coc.jpg', 31, 1),
(400, 'Martini Greey Goose', '101084', 135, 0.06, '3', '5010677914000', 0.06, '4', '5010677934008', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 31, 1),
(401, 'Copa Clericot', '101091', 54, 0.09, '3', '101090', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(402, 'Jarra Clericot', '101092', 153, 0.36, '3', '101090', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(403, 'Sangria Natural', '101093', 36, 0.075, '3', '101090', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(404, 'Sangria Preparada', '101094', 76, 0.06, '3', '7501035015203', 0.075, '4', '101090', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(405, 'Perla Negra', '101096', 90, 0.06, '3', '101095', 1, '2', '7501035046016', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '16', 'imagenes/coc.jpg', 30, 1),
(406, 'Cafe Irlandes ', '051245', 88, 0, 'Kilogramos', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '39', 'imagenes/CHOCOLATES.jpg', 0, 1),
(407, 'Litro Jugo PiÃ±a', '1234567', 70, 1, '3', '7501013122114', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', '', 0, 1),
(408, 'Litro Jugo Naranja', '12345678', 70, 1, '3', '7501013122138', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', 'imagenes/tarro.jpg', 0, 1),
(409, 'Litro Jugo Uva', '124589', 70, 1, '3', '7501013122145', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', 'imagenes/tarro.jpg', 0, 1),
(413, 'Cerveza Pacifico', '27863', 30, 0.355, '3', '0257964', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '9', 'imagenes/tarro.jpg', 0, 1),
(415, 'Copa Martel VSOP', '232345098', 120, 0.06, '4', '4607014056847', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '15', 'imagenes/alcohol.jpg', 17, 1),
(418, 'Tequila Centenario Plata', '89895823612', 575, 0.75, '3', '015489', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '14', '', 13, 2),
(436, 'Nachos Chope', '24789214', 110, 0.1, 'Kilogramos', '107', 0.15, '1', '098765432', 0.15, '1', '00092', 0.15, '1', '00062', 0.0225, '1', '00054', 0.0075, '1', 0, '11', '../uploads/', 0, 2),
(420, 'KILOS 100 AÃƒâ€˜OS', '0611501', 700, 1, 'Kilogramos', '2001', 0.75, '3', '7501005616898', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '41', 'imagenes/LUNES.jpg', 34, 1),
(421, 'KILOS SMIRNOF', '06111502', 700, 1, 'Kilogramos', '2001', 0.75, '3', '082000000068', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '41', 'imagenes/LUNES.jpg', 34, 1),
(422, 'KILOS TORRES 5', '2478969', 700, 1, 'Kilogramos', '2001', 0.75, '3', '8410113000019', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '41', 'imagenes/LUNES.jpg', 34, 1),
(423, 'KILOS BACARDI', '06687994', 700, 1, 'Kilogramos', '2001', 0.75, '3', '7501008613122', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '41', 'imagenes/LUNES.jpg', 34, 1),
(424, 'KILOS JB', '24895', 700, 1, 'Kilogramos', '2001', 0.75, '3', '5010103800310', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', 0, '41', 'imagenes/LUNES.jpg', 34, 1),
(468, 'Refresco de Cortecia', '2435', 0, 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 0, 1),
(465, 'Kilos con Torres 10', '524784652', 900, 1, 'Kilogramos', '2001', 0.75, '3', '8410113000071', 4, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 34, 1),
(466, 'Fajitas de pollo', '36589', 80, 0.3, '1', '106', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '1', '../uploads/', 0, 2),
(429, 'Fanta  355 ml', '1212343', 28, 1, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', 0, '31', 'imagenes/fanta.jpg', 0, 1),
(508, 'Media orden de Alitas', '247862', 69, 8, '2', '114', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '11', '../uploads/', 0, 2),
(479, 'MOSTAZA MIEL', '716486132907', 0, 0.075, '3', '00075', 0.045, '4', '00076', 0.03, '1', '00022', 0.015, '1', '00043', 0, '0', '', 0, '', 0, '46', '../uploads/', 0, 2),
(439, 'Ensalada del chef', '546529', 95, 0.125, '2', '00032', 0.02, '1', '00008', 0.02, '1', '00026', 0.1, '1', '106', 0.08, '1', '00035', 0.02, '1', 0, '5', '../uploads/', 0, 2),
(442, 'Sopa de Medula', '178993', 55, 0.1, '1', '7895', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '1', '../uploads/', 0, 2),
(443, 'Guarnicion Espinaca a la Crema', '7895', 40, 0.15, 'Kilogramos', '00065', 0.05, '1', '55555', 0.015, '4', '00067', 0.05, '1', '00035', 0.002, '1', '00011', 0, '', 0, '21', '../uploads/', 0, 2),
(444, 'Guarnicion Papa al Horno', '9874', 40, 0.15, 'Kilogramos', '00109', 0.015, '1', '00038', 0.004, '1', '00005', 0, '0', '', 0, '0', '', 0, '', 0, '21', '../uploads/', 0, 2),
(487, 'TERIYAKI', '7454789', 0, 0.004, '1', '00022', 0.02, '4', '00076', 0.04, '4', '00087', 0.00225, '4', '00018', 0.00225, '4', '00019', 0.0015, '1', 43, '46', '../uploads/', 0, 2),
(448, 'T-Bone 350 gr', '45692', 190, 1, '2', '45687', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '3', '../uploads/', 0, 2),
(449, 'New York 350gr', '4597', 250, 1, '2', '1567', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '3', '../uploads/', 0, 2),
(450, 'Prime Rib 350 gr', '47965', 250, 1, '2', '128965', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '3', '../uploads/', 0, 2),
(451, 'Black Rib 1kg', '357951', 250, 1, '2', '57896416', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '3', '../uploads/', 0, 2),
(455, 'Copa Litro 100 aÃƒÂ±os', '47965', 80, 0.09, '3', '7501005616898', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 39, 1),
(456, 'Copa Litro Smirnof', '798456', 80, 0.09, '3', '082000000068', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 39, 1),
(457, 'Copa Litro Bacardi', '263749654', 80, 0.09, '3', '7501008613122', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 39, 1),
(458, 'Copa Litro JB', '3216984', 80, 0.09, '3', '5010103800310', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 39, 1),
(462, 'Copa Mezcal Meteoro ', '58417', 55, 0.06, '3', '011112090988', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 38, 1),
(460, 'Copa Mezcal Marca Negra', '57896', 60, 0.06, '3', '736040527336', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 38, 1),
(463, 'Copa Mezcal Memorable', '9631', 55, 0.06, '1', '7503012751036', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 38, 1),
(467, 'Medio kilo de Arrachera', '4789', 220, 0.5, '1', '2001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '3', '../uploads/', 0, 2),
(505, 'Cortecia Copa Torres 5 ', '15478', 0, 60, '3', '8410113000019', 2, 'Pieza', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '47', '../uploads/', 0, 1),
(507, 'Cortecia Tarro .355', '1483', 0, 0.355, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '47', '../uploads/', 0, 1),
(476, 'DESCORCHE', '17895', 150, 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '10', '../uploads/', 0, 1),
(477, 'ADEREZO PAPA AL HORNO', '0078217467', 0, 0.01875, '1', '2006', 0.03125, '4', '00067', 0.0625, '1', '00066', 0.000675, '1', '00011', 0, '0', '', 0, '', 0, '46', '../uploads/', 0, 2),
(478, 'SALSA PASILLA', '001192387699', 0, 0.025, '1', '00047', 0.3, '2', '00070', 0.003, '1', '55555', 0.01, '1', '00009', 0.03, '4', '00004', 0.0015, '1', 43, '46', '../uploads/', 0, 2),
(480, 'CESAR', '924637', 0, 0.09, '1', '00031', 0.003, '1', '00077', 0.006, '1', '00020', 0.00225, '4', '00019', 0.00225, '4', '00018', 0.00675, '1', 39, '46', '../uploads/', 0, 2),
(481, 'SALSA FRUTOS ROJOS', '082748216478', 0, 0.05, '1', '00073', 0.00375, '1', '00043', 0.0002, '1', '00012', 0, '0', '', 0, '0', '', 0, '', 0, '46', '../uploads/', 0, 2),
(482, 'MIL ISLAS', '74652', 0, 0.09, '3', '00086', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '46', '../uploads/', 0, 2),
(483, 'BBQ', '09327158', 0, 0.06, '3', '00090', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '46', '../uploads/', 0, 2),
(484, 'DIABLA', '890573129', 0, 0.0375, '1', '00047', 0.003, '1', '00012', 0.0009, '1', '55555', 0.012, '1', '00041', 0.00006, '1', '00009', 0.000024, '1', 11, '46', '../uploads/', 0, 2),
(485, 'MANGO', '0472178', 0, 0.06, '1', '00080', 0.015, '4', '7501043700504', 0.0015, '4', '00098', 0, '0', '', 0, '0', '', 0, '', 0, '46', '../uploads/', 0, 2),
(486, 'Frijoles', '1111', 0, 0.1, '1', '00062', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '21', '../uploads/', 0, 2),
(506, 'Cortecia Jarra', '21674', 0, 1.6, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '47', '../uploads/', 0, 1),
(493, 'Johnnie Walker Black Label', '214865', 1050, 0.75, '3', '5000267024004', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '14', '../uploads/', 3, 1),
(495, 'Atrapa SueÃƒÂ±os', '24522', 50, 0.03, '3', '00459', 0.03, '4', '7501043707657', 0.015, '4', '7501043709354', 0, '0', '', 0, '0', '', 0, '', 0, '17', '../uploads/', 0, 1),
(497, 'Copa  Amaretto', '636985', 55, 0.06, '3', '7501035020320', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 15, 1),
(498, 'PROMOCION ETIQUETA ROJA/TORRES 5', '54987', 1100, 0.75, '3', '5000267014074', 0.75, '4', '8410113000019', 4, '2', '0001', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 34, 1),
(500, 'Menu Mexicano', '061115', 120, 0, '1', '101', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '23', '../uploads/', 0, 2),
(510, 'SALMON', '5863', 74, 1, '1', '20015', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '37', '../uploads/', 0, 2),
(509, 'SALMON', '58796', 74, 1, '1', '20015', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '0', '../uploads/', 0, 2),
(504, 'Cotecia Copa JB', '47965', 0, 0.06, '3', '5010103800310', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '47', '../uploads/', 0, 1),
(511, 'Copa Cuervo Traicionl', '4496', 0, 0.06, '3', '7501035012028', 2, '2', '0001', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '47', '../uploads/', 0, 1),
(512, 'PROMO TRITON', '061115', 230, 5, '3', '1009565656', 0, '0', '', 0, '0', '', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 40, 1),
(513, 'Kilos Red Label', '2473', 700, 0.7, '3', '5000267014074', 5, '2', '0001', 1, '1', '2001', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 34, 1),
(514, 'Kilos Etiqueta Roja', '18962', 800, 0.75, '3', '101', 5, '2', '0001', 1, '1', '2001', 0, '0', '', 0, '0', '', 0, '', 0, '41', '../uploads/', 34, 1),
(515, 'Copa Jack Daniels', '5279455', 75, 0.06, '3', '7474747410', 2, '2', '09217197120', 0, '2', 'J19A', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 14, 1),
(516, 'Whisky Jack Daniels', '7468210', 858, 0.75, '3', '7474747410', 4, '2', '09217197120', 0, '2', 'J19A', 0, '0', '', 0, '0', '', 0, '', 0, '14', '../uploads/', 3, 1),
(517, 'Copa Henessy V.S.O.P.', '459310', 120, 0.06, '3', '3245990969402', 2, '2', '09217197120', 0, '1', 'J19A', 0, '0', '', 0, '0', '', 0, '', 0, '15', '../uploads/', 17, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_canceladas`
--

CREATE TABLE `ventas_canceladas` (
  `id_venta` int(100) NOT NULL,
  `N_venta` int(100) NOT NULL,
  `articulo` varchar(100) NOT NULL,
  `codigo_producto` varchar(100) NOT NULL,
  `cantidad` int(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `PrecioU` decimal(60,2) NOT NULL,
  `PrecioT` decimal(60,2) NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha` date NOT NULL,
  `cantidad_restada` double NOT NULL,
  `asignada` varchar(100) NOT NULL,
  `cantidad_restada2` double NOT NULL,
  `asignada2` varchar(100) NOT NULL,
  `cantidad_restada3` double NOT NULL,
  `asignada3` varchar(100) NOT NULL,
  `cantidad_restada4` double NOT NULL,
  `asignada4` varchar(100) NOT NULL,
  `cantidad_restada5` double NOT NULL,
  `asignada5` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mesa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `motivo` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas_canceladas`
--

INSERT INTO `ventas_canceladas` (`id_venta`, `N_venta`, `articulo`, `codigo_producto`, `cantidad`, `categoria`, `PrecioU`, `PrecioT`, `hora`, `fecha`, `cantidad_restada`, `asignada`, `cantidad_restada2`, `asignada2`, `cantidad_restada3`, `asignada3`, `cantidad_restada4`, `asignada4`, `cantidad_restada5`, `asignada5`, `usuario`, `mesa`, `area`, `status`, `motivo`) VALUES
(1, 1, 'Hamburguesa 200gr', '18', 1, '12', '88.00', '88.00', '2016-12-08 19:22:39', '2016-12-08', 1, '113', 0, '', 0, '', 0, '', 0, '', 'Administrador', '1', 'Area 1', 'Cancelado', 'error de dedo'),
(2, 1, 'Johnnie Walker Black Label', '214865', 1, '14', '1050.00', '1050.00', '2016-12-08 19:22:39', '2016-12-08', 0.75, '5000267024004', 0, '', 0, '', 0, '', 0, '', 'Administrador', '1', 'Area 1', 'Cancelado', 'error de dedo'),
(3, 2, 'Conga Tropical', '997', 1, '31', '35.00', '35.00', '2016-12-08 19:24:37', '2016-12-08', 0, '101', 0, '', 0, '', 0, '', 0, '', 'Administrador', '1', 'Area 1', 'Cancelado', 'error de dedo'),
(4, 3, '3 Tacos Bife', '80802', 1, '2', '90.00', '90.00', '2016-12-08 19:25:13', '2016-12-08', 0.43, '101', 0.06, '00051', 0, '', 0, '', 0, '', 'Administrador', '2', 'Area 1', 'Cancelado', 'error de dedo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_totales`
--

CREATE TABLE `ventas_totales` (
  `id_venta_total` int(100) NOT NULL,
  `total_venta` decimal(60,2) NOT NULL,
  `N_venta` int(100) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha` date NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mesa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `parallevar` varchar(100) NOT NULL,
  `numpersonas` int(11) NOT NULL,
  `cortesia` varchar(100) NOT NULL,
  `metodo_pago` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas_totales`
--

INSERT INTO `ventas_totales` (`id_venta_total`, `total_venta`, `N_venta`, `fecha_hora`, `fecha`, `usuario`, `mesa`, `area`, `status`, `parallevar`, `numpersonas`, `cortesia`, `metodo_pago`) VALUES
(5, '56.00', 5, '2016-12-08 19:37:41', '2016-12-08', 'Administrador', '2', 'Area 1', 'Impreso', '', 0, '', ''),
(4, '590.00', 4, '2016-12-08 19:25:57', '2016-12-08', 'Administrador', '1', 'Area 1', 'Pagado', '', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_totales_canceladas`
--

CREATE TABLE `ventas_totales_canceladas` (
  `id_venta_total` int(100) NOT NULL,
  `total_venta` decimal(60,2) NOT NULL,
  `N_venta` int(100) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha` varchar(10) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mesa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `ctg_tiposusuario`
--
ALTER TABLE `ctg_tiposusuario`
  ADD PRIMARY KEY (`id_TipoUsuario`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `inventario_dia`
--
ALTER TABLE `inventario_dia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id_subcat`),
  ADD UNIQUE KEY `titulo_sub` (`titulo_sub`);

--
-- Indices de la tabla `tbl_areas`
--
ALTER TABLE `tbl_areas`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `tbl_areas_responsables`
--
ALTER TABLE `tbl_areas_responsables`
  ADD PRIMARY KEY (`id_area_responsable`);

--
-- Indices de la tabla `tbl_mesas`
--
ALTER TABLE `tbl_mesas`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `tbl_meseros`
--
ALTER TABLE `tbl_meseros`
  ADD PRIMARY KEY (`id_mesero`);

--
-- Indices de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_TipoUsuario` (`id_TipoUsuario`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_venta`);

--
-- Indices de la tabla `tickets_cancelados`
--
ALTER TABLE `tickets_cancelados`
  ADD PRIMARY KEY (`id_venta`);

--
-- Indices de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `ventas_canceladas`
--
ALTER TABLE `ventas_canceladas`
  ADD PRIMARY KEY (`id_venta`);

--
-- Indices de la tabla `ventas_totales`
--
ALTER TABLE `ventas_totales`
  ADD PRIMARY KEY (`id_venta_total`);

--
-- Indices de la tabla `ventas_totales_canceladas`
--
ALTER TABLE `ventas_totales_canceladas`
  ADD PRIMARY KEY (`id_venta_total`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `ctg_tiposusuario`
--
ALTER TABLE `ctg_tiposusuario`
  MODIFY `id_TipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `inventario_dia`
--
ALTER TABLE `inventario_dia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario_general`
--
ALTER TABLE `inventario_general`
  MODIFY `id_producto` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824;
--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id_subcat` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `tbl_areas`
--
ALTER TABLE `tbl_areas`
  MODIFY `id_area` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_areas_responsables`
--
ALTER TABLE `tbl_areas_responsables`
  MODIFY `id_area_responsable` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `tbl_mesas`
--
ALTER TABLE `tbl_mesas`
  MODIFY `id_mesa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tbl_meseros`
--
ALTER TABLE `tbl_meseros`
  MODIFY `id_mesero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_venta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tickets_cancelados`
--
ALTER TABLE `tickets_cancelados`
  MODIFY `id_venta` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  MODIFY `id_producto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;
--
-- AUTO_INCREMENT de la tabla `ventas_canceladas`
--
ALTER TABLE `ventas_canceladas`
  MODIFY `id_venta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ventas_totales`
--
ALTER TABLE `ventas_totales`
  MODIFY `id_venta_total` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ventas_totales_canceladas`
--
ALTER TABLE `ventas_totales_canceladas`
  MODIFY `id_venta_total` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
