-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2016 a las 20:21:16
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `puntodeventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id_cat` int(3) NOT NULL AUTO_INCREMENT,
  `titulo_cat` varchar(100) NOT NULL,
  `subcategoria` varchar(100) NOT NULL,
  `visible` varchar(20) NOT NULL,
  `imagen_cat` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

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

CREATE TABLE IF NOT EXISTS `ctg_tiposusuario` (
  `id_TipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `tx_TipoUsuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_TipoUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `localidad` varchar(300) NOT NULL,
  `CP` varchar(300) NOT NULL,
  `telefono` varchar(300) NOT NULL,
  `RFC` varchar(300) NOT NULL,
  `logo` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre`, `direccion`, `localidad`, `CP`, `telefono`, `RFC`, `logo`) VALUES
(3, 'GUFRA MÉXICO', 'VOLCAN DE COLIMA # 2 INT 54', 'LOMA ALTA INFONAVIT', '90014', '', 'FARC890403NZ3', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_dia`
--

CREATE TABLE IF NOT EXISTS `inventario_dia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `observaciones` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_general`
--

CREATE TABLE IF NOT EXISTS `inventario_general` (
  `id_producto` int(100) NOT NULL AUTO_INCREMENT,
  `producto` varchar(100) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `precio_distribuidor` double NOT NULL,
  `precio_venta` double NOT NULL,
  `cantidad_inv` double NOT NULL,
  `unidad_medida` double NOT NULL,
  `onzas` double NOT NULL,
  `minimo_almacen` double NOT NULL,
  `area_responsable` varchar(100) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=824 ;

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

CREATE TABLE IF NOT EXISTS `subcategorias` (
  `id_subcat` int(50) NOT NULL AUTO_INCREMENT,
  `id_cat_principal` int(50) NOT NULL,
  `titulo_sub` varchar(254) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `img` varchar(254) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_subcat`),
  UNIQUE KEY `titulo_sub` (`titulo_sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

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

CREATE TABLE IF NOT EXISTS `tbl_areas` (
  `id_area` int(10) NOT NULL AUTO_INCREMENT,
  `nom_area` varchar(200) NOT NULL,
  `largo` int(11) NOT NULL,
  `ancho` int(11) NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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

CREATE TABLE IF NOT EXISTS `tbl_areas_responsables` (
  `id_area_responsable` int(100) NOT NULL AUTO_INCREMENT,
  `nombre_area_responsable` varchar(100) NOT NULL,
  `nombre_encargado` varchar(200) NOT NULL,
  PRIMARY KEY (`id_area_responsable`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

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

CREATE TABLE IF NOT EXISTS `tbl_mesas` (
  `id_mesa` int(100) NOT NULL AUTO_INCREMENT,
  `nom_mesa` varchar(100) NOT NULL,
  `id_area` int(100) NOT NULL,
  `nom_area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

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

CREATE TABLE IF NOT EXISTS `tbl_meseros` (
  `id_mesero` int(11) NOT NULL AUTO_INCREMENT,
  `tx_nombre` varchar(50) NOT NULL,
  `tx_apellidoPaterno` varchar(50) DEFAULT NULL,
  `tx_apellidoMaterno` varchar(50) DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `tx_correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) NOT NULL,
  `tx_username` varchar(50) DEFAULT NULL,
  `dt_registro` datetime DEFAULT NULL,
  `pw` varchar(100) NOT NULL,
  `imagen` varchar(500) NOT NULL,
  PRIMARY KEY (`id_mesero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
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
  `imagen` varchar(500) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_TipoUsuario` (`id_TipoUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

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

CREATE TABLE IF NOT EXISTS `tickets` (
  `id_venta` int(100) NOT NULL AUTO_INCREMENT,
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
  `descuento` double NOT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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

CREATE TABLE IF NOT EXISTS `tickets_cancelados` (
  `id_venta` int(100) NOT NULL AUTO_INCREMENT,
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
  `propina` double NOT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

CREATE TABLE IF NOT EXISTS `tipo_productos` (
  `id_producto` int(3) NOT NULL AUTO_INCREMENT,
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
  `area` int(10) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=518 ;

--
-- Volcado de datos para la tabla `tipo_productos`
--

INSERT INTO `tipo_productos` (`id_producto`, `nombre_producto`, `codigo_producto`, `precio_producto`, `cantidad_resta_inventario`, `unidad_medida`, `asignar_a`, `cantidad_resta_inventario2`, `unidad_medida2`, `asignar_a2`, `cantidad_resta_inventario3`, `unidad_medida3`, `asignar_a3`, `cantidad_resta_inventario4`, `unidad_medida4`, `asignar_a4`, `cantidad_resta_inventario5`, `unidad_medida5`, `asignar_a5`, `cantidad_resta_inventario6`, `unidad_medida6`, `asignar_a6`, `mostrar_en`, `imagen`, `subcat`, `area`) VALUES
(119, 'CHISTORRA PZA ASADA', '119', 100, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(118, 'CHISTORRA PZA CRUDA', '118', 80, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(117, 'ARRACHERA KG ASADO', '117', 300, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(116, 'ARRACHERA KG CRUDO', '116', 300, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(115, 'COSTILLA KG ASADO', '115', 170, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(114, 'COSTILLA KG CRUDO', '114', 150, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(113, 'LOMO KG ASADO', '113', 160, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(112, 'LOMO KG CRUDO', '112', 140, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(111, 'CHULETA KG ASADO', '111', 280, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(110, 'CHULETA KG CRUDO', '110', 200, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(109, 'LONGANIZA KG ASADO', '109', 160, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(108, 'LONGANIZA KG CRUDO', '108', 140, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(107, 'CECINA KG ASADO', '107', 200, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(106, 'CECINA KG CRUDO', '106', 160, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(105, 'CONEJO ENTERO', '105', 160, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(104, 'POLLO ENTERO', '104', 100, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(103, 'LITRO DE FRIJOLES', '103', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(101, 'PROVOLONE PZA', '101', 60, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(102, 'KG. SURTIDO', '102', 170, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(99, 'BOTANERO PZA', '99', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(100, 'AHUMADO PZA', '100', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(98, 'ASADERO PZA', '98', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(97, 'FRESCO PZA', '97', 80, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(96, 'PANELA PZA', '96', 60, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(95, 'HEBRA 1/2', '95', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(94, 'HEBRA KG', '94', 85, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(93, 'MIEL PZA', '93', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(92, 'NATA ', '92', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(91, 'CREMA', '91', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(90, 'CHILES MANZANOS', '90', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(88, 'TORITO', '88', 120, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(89, 'CHILES CHIPOTLES', '89', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(87, 'BU?UELOS', '87', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(86, 'PAY DE QUESO GRANDE', '86', 200, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(85, 'PAN DE NATA', '85', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(84, 'CAF? HG', '84', 210, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(83, 'REBANADA DE PAN', '83', 15, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(82, 'FLAN DE VASO', '82', 15, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(81, 'PAY DE QUESO', '81', 20, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(80, 'PAY (FRESA, ZARZAMORA, FRUTAS)', '80', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(78, 'PLATANOS FRITOS', '78', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(79, 'DURAZNOS (ROMPOPE O CREMA)', '79', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(77, 'PASTEL DE 3 LECHES (NATURAL, CHOCOLATE O CAJETA)', '77', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(76, 'PASTEL DE ZANAHORIA', '76', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(75, 'FLAN NAPOLITANO', '75', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(74, 'TARTA DE ELOTE', '74', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(73, 'CHOCOFLAN', '73', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(72, 'TORITO', '72', 35, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(71, 'AMARETO', '71', 70, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(70, 'MIDORI', '70', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(69, 'BAILEYS', '69', 70, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(68, 'LICOR 43', '68', 70, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(67, 'ANIS DULCE O SECO', '67', 55, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(66, 'MATUSALEN CLASICO', '66', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(65, 'BACARDI SOLERA', '65', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(64, 'BACARDI BLANCO', '64', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(63, 'SMIRNOFF', '63', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(62, 'BUCHANAN?S', '62', 85, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(61, 'JACK DANIELS', '61', 75, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(60, 'ETIQUETA ROJA', '60', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(59, 'TORRES 10', '59', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(58, 'TORRES 5', '58', 55, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(57, '100 A?OS', '57', 50, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(56, 'DON JULIO REPOSADO', '56', 75, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(55, 'CAZADORES', '55', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(54, 'HORNITOS', '54', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(53, 'TRADICIONAL', '53', 70, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(51, 'CAF? DE OLLA', '51', 15, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(52, '1800', '52', 80, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(50, 'TE', '50', 15, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(49, 'CHOCOLATE', '49', 20, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(48, 'CAF? LECHERO', '48', 20, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(47, 'CAF? CAPUCHINO', '47', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(46, 'CAF? EXPRESS', '46', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(45, 'CAF? AMERICANO', '45', 20, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(44, 'CLAMATO, MICHELADA O CHELADA', '44', 40, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(43, 'CERVEZA  ', '43', 30, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(42, 'COPA DE VINO', '42', 30, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(41, 'JUGO DE NARANJA', '41', 20, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(40, 'JARRA DE AGUA (SABOR)', '40', 60, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(39, 'REFRESCO', '39', 15, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(38, 'LICUADOS', '38', 30, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(37, 'TAMPIQUE?A', '37', 95, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(36, 'MILANESA POLLO O RES (CON ENSALDA Y PAPAS)', '36', 85, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(35, 'PECHUGA PLANCHA O DIABLA (CON ENSALADA Y PAPAS)', '35', 85, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(34, 'MIXIOTE DE CORDERO', '34', 100, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(33, 'RIB-EYE', '33', 185, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(32, 'TOP-SIRLOIN', '32', 160, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(31, 'T-BONE', '31', 160, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(30, 'PARRILLA CON QUESO', '30', 400, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(29, 'ARRACHERA', '29', 120, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(28, 'CHISTORRA', '28', 100, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(27, 'COSTILLA', '27', 95, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(26, 'CONEJO', '26', 90, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(25, 'CHULETA DE CORDERO', '25', 90, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(24, 'MOLLEJAS DE RES', '24', 90, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(23, 'CECINA', '23', 90, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(22, 'POLLO', '22', 85, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(21, 'LOMO', '21', 90, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(20, 'LONGANIZA', '20', 85, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(19, 'SURTIDO', '19', 90, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(17, 'QUESO ASADO', '17', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(18, 'TOREADOS, NOPAL Y CEBOLLA', '18', 35, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(16, 'GUACAMOLE', '16', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(15, 'QUESADILLA CON CARNE', '15', 25, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(14, 'PICADITA', '14', 15, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(13, 'QUESADILLA NATURAL', '13', 20, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(11, 'PANCITA DE RES', '11', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(12, 'PAPA, CHORIZO Y QUESO', '12', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(10, 'SOPA DE CHAMPI?OS', '10', 40, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(9, 'CONSOME', '9', 40, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(8, 'ENSALADA LA JOYA', '8', 45, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(7, 'BISTECK DE TERNERA', '7', 75, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(6, 'OMELETE DE QUESO', '6', 75, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(5, 'CHILAQUILES', '5', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(4, 'ENCHILADAS, ENMOLADAS O ENFRIJOLADAS', '4', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(3, 'HUEVOS CAMPIRANOS', '3', 75, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(2, 'HUEVOS A LA JOYA', '2', 65, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3),
(1, 'HUEVOS AL GUSTO', '1', 60, 0, '0', '0', 0, 'Pieza', '0', 0, '0', '1', 0, '0', '', 0, '0', '', 0, '0', 0, '15', '../uploads/alcohol.jpg', 14, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `id_venta` int(100) NOT NULL AUTO_INCREMENT,
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
  `cantidad_restada6` double NOT NULL,
  `asignada6` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mesa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `parallevar` varchar(200) NOT NULL,
  `numpersonas` int(200) NOT NULL,
  `cortesia` varchar(100) NOT NULL,
  `metodo_pago` varchar(100) NOT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_canceladas`
--

CREATE TABLE IF NOT EXISTS `ventas_canceladas` (
  `id_venta` int(100) NOT NULL AUTO_INCREMENT,
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
  `motivo` varchar(500) NOT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `ventas_totales` (
  `id_venta_total` int(100) NOT NULL AUTO_INCREMENT,
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
  `metodo_pago` varchar(100) NOT NULL,
  PRIMARY KEY (`id_venta_total`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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

CREATE TABLE IF NOT EXISTS `ventas_totales_canceladas` (
  `id_venta_total` int(100) NOT NULL AUTO_INCREMENT,
  `total_venta` decimal(60,2) NOT NULL,
  `N_venta` int(100) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha` varchar(10) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mesa` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id_venta_total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
