-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-03-2021 a las 05:35:50
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatbot`
--

DROP TABLE IF EXISTS `chatbot`;
CREATE TABLE IF NOT EXISTS `chatbot` (
  `id_pregunta` int(10) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(600) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `respuesta` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `chatbot`
--

INSERT INTO `chatbot` (`id_pregunta`, `pregunta`, `respuesta`) VALUES
(1, '¡Aquí es donde les contendremos! ¡Aquí es donde nosotros lucharemos! ¡Y aquí es donde ellos morirán!', '300'),
(2, 'Corre, Forrest, corre', 'Forrest Gump'),
(3, 'Solo puede quedar uno', 'Los Inmortales'),
(4, 'Soy el rey del mundo', 'titanic'),
(5, 'Alguna vez has bailado con el Diablo a la luz de la Luna', 'Batman'),
(6, '¿Asustado? Aterrorizado, petrificado, pasmado, estupidizado por ti.', 'Una mente maravillosa'),
(7, '¿De qué sirve confesarme, si no me arrepiento? ', 'El padrino III'),
(8, 'A Dios pongo por testigo, que jamás volveré a pasar hambre.', 'Lo que el viento se llevó'),
(9, 'Me estás hablando a mí?', 'Taxi driver'),
(10, 'Nunca os habéis cruzado con alguien a quien no deberíais haber puteado? Ese soy yo. ', 'Grand Torino'),
(11, 'Odiarlo? (a su país). Moriría por él. Yo quiero lo que ellos quieren y lo que cualquier otro que viniese aquí, a dejarse las tripas y a dar todo lo que tiene quiere, que su país lo quiera tanto como nosotros lo queremos. Eso es lo que quiero.', 'Rambo'),
(12, 'Por qué caemos Bruce? Para aprender a levantarnos.', 'Batman Begins'),
(13, 'Tienes miedo a morir? Entonces ya sabes lo que es ser un esclavo.', 'Blade Runner'),
(14, 'Abogadoooo… ¿Estás ahí, abogado? Sal, ratita, quiero verte la colita.', 'El cabo del miedo'),
(15, 'Abróchense los cinturones. Esta noche habrá turbulencias.', 'Eva al desnudo'),
(16, 'Acabo de fabricar lo que hace 28 años juré no volver a crear. He creado una herramienta de muerte y lo he hecho con éxito. Lo he hecho porque filosóficamente estoy de acuerdo con tu objetivo. Puedo decir sin presunción que ésta es mi mejor espada. Si en tu viaje los dioses se interponen en tu camino, este acero los atravesará.', 'Kill Bill'),
(17, 'Amo el olor del napalm por la mañana. Una vez durante doce horas bombardeamos una colina y cuando acabó todo, subí. No encontramos ni un cadáver de esos chinos de mierda. Qué pestazo el de la gasolina quemada. Aquella colina olía a.… a victoria', 'Apocalypse Now'),
(18, 'Anda, alégrame el día', 'Harry el Sucio'),
(19, 'a cada minuto que pasa es otra oportunidad para cambiarlo todo. ', 'Vanilla Sky'),
(20, 'Carpe diem. Aprovechen el día. Hagan sus vidas extraordinarias.', 'Sociedad de los Poetas Muertos'),
(21, 'Con tu permiso me voy a casa, a tener un ataque al corazón.', 'Pulp fiction'),
(22, 'Cuando uno ha matado no se puede echar atrás. Equivocado o no, es una marca. Y una marca no se borra. ', 'Logan'),
(23, 'Dar cera, pulir cera. ', 'Karate Kid'),
(24, 'Dices que quieres morir por amor, pero no sabes nada de la muerte, ni sabes nada del amor', 'Troya'),
(25, 'Dime ¿También sangras?', 'Batman vs Superman'),
(26, 'El miedo lleva a la ira, la ira al odio, y el odio hacia el lado oscuro.', 'Star Wars'),
(27, 'El mundo sabrá que unos hombres libres se enfrentaron a un tirano, que unos pocos se enfrentaron a muchos, y sabrá antes de que acabe esta batalla, que incluso un gran rey puede sangrar.', '300'),
(28, 'El pueblo no debería temer al gobierno, el gobierno debería temer al pueblo.', 'V de Vendetta'),
(29, 'Es curiosa la amabilidad de la gente cuando estás muerto.', 'El crepusculo de los dioses'),
(30, 'Hasta la vista, baby.', 'Terminator III'),
(31, 'Hay tres maneras de hacer las cosas: la correcta, la incorrecta y la mía.', 'Casino'),
(32, 'Hay una gran diferencia entre conocer el camino y andar el camino.', 'Matrix'),
(33, 'Hola, me llamo Iñigo Montoya, tú mataste a mi padre, prepárate a morir.', 'La princesa prometida'),
(34, 'Houston, tenemos un problema.', 'Apolo 13'),
(35, 'Los humanos son raros. Creen que el orden y el caos son fuerzas opuestas, y tratan de controlar lo incontrolable. Pero hay gracia en sus fallas. Y fue lo que no viste.', 'Vengadores: la era de Ultrón'),
(36, 'Lo haría si fuera Parmenio, pero soy Alejandro. ', 'Alejandro Magno'),
(37, 'Los dioses nos envidian porque cada instante nuestro podría ser el último. ', 'Troya'),
(38, 'La patria es el último refugio de los cobardes.', 'Senderos de gloria'),
(39, 'La muerte nos sonríe a todos, devolvámosle la sonrisa.', 'Gladiator'),
(40, 'La muerte es segura, la vida no. ', 'Training Day'),
(41, 'La apatía es la solución, es decir, resulta más fácil abandonarse a las drogas que enfrentarse a la vida, robar lo que uno quiere que ganárselo, pegar a un niño que enseñarlo. Por otra parte, el amor requiere esfuerzo, trabajo.', 'Seven'),
(42, 'Ese no es asunto mio ', 'Drake y Josh'),
(43, 'Tus problemas no son asunto mio', 'Spiderman'),
(44, 'Los que podáis caminar podéis iros, pero dejad vuestros miembros cercenados, ahora son míos.', 'Kill Bill'),
(45, 'Mantén a tus amigos cerca, pero a tus enemigos aún más cerca. ', 'El padrino II'),
(46, 'Matarte no me da ninguna satisfacción… Pero sí todo lo que ocurre antes de la muerte.', 'Sin City'),
(47, 'Mi nombre es Máximo Décimo Meridio, comandante de los ejércitos del Norte, general de las legiones medias, fiel servidor del verdadero emperador, Marco Aurelio, padre de un hijo asesinado, marido de una mujer asesinada y alcanzaré mi venganza, en esta vida o en la próxima.', 'Gladiador'),
(48, 'Miedo, el miedo atrae al temeroso, al fuerte, al débil, al inocente, al corrupto. El miedo, el miedo es mi aliado.', 'Star wars'),
(49, 'Moriré aquí. Cada centímetro de mí perecerá, cada centímetro, salvo uno. Un centímetro, algo pequeño y frágil y lo único que merece la pena conservar en el mundo, nunca debemos perderlo o entregarlo, nunca debemos dejar que nos lo arrebaten.', 'V de Vendetta'),
(50, 'Ni tú ni yo ni nadie golpea más fuerte que la vida.', 'Rocky Balboa'),
(51, 'No conoces el poder del lado oscuro.', 'Star wars'),
(52, 'No culpo a las personas por cometer errores, pero si les pido que paguen por ellos.', 'Parque Jurásico'),
(53, 'No existen preguntas sin respuesta, solo preguntas mal formuladas.', 'Matrix'),
(54, 'No hay lugar como el hogar.', 'El mago de Oz'),
(55, 'No quiero sobrevivir, quiero vivir.', '12 años de esclavitud'),
(56, 'Si hubieras mantenido mi amistad, los que maltrataron a tu hija lo hubieran pagado con creces. Porque cuando uno de mis amigos se crea enemigos, yo los convierto en mis enemigos. Y a ese le temen. ', 'El padrino'),
(57, 'Siempre se llega a alguna parte si se camina lo bastante.', 'Alicia en el pais de las maravillas'),
(58, 'Todo lo que han construido se derrumbará, y con las cenizas de su civilización crearemos un mundo mejor.', 'X Men: Apocalipsis'),
(59, 'E.T. Mi casa. Teléfono', 'E.T. El extraterrestre'),
(60, 'Bond. James Bond', 'Dr. No'),
(61, 'Después de todo, mañana será otro día', 'Lo que el viento se llevó'),
(62, 'Necesitarás un barco más grande.', 'Tiburón'),
(63, 'Está vivo. ¡Está vivo!', 'Frankeinstein'),
(64, 'Elemental, mi querido Watson.', 'The Adventures of Sherlock Holmes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frecuentes`
--

DROP TABLE IF EXISTS `frecuentes`;
CREATE TABLE IF NOT EXISTS `frecuentes` (
  `id_pregunta` int(10) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(400) NOT NULL,
  `respuesta` varchar(400) NOT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `frecuentes`
--

INSERT INTO `frecuentes` (`id_pregunta`, `pregunta`, `respuesta`) VALUES
(1, 'hola', 'hola, como te puedo ayudar?'),
(2, '¿quien eres?', 'soy tarantulino, una parodia a Quentin Tarantino. Y estoy aqui para ayudarte a encontrar frases de peliculas :)'),
(3, 'hola tarantulino', 'hola, ese soy yo. Puedes preguntarme acerca de alguna frase de peliculas'),
(4, 'cuantos años tienes?', '1 día o:'),
(5, 'que eres?', 'soy un chatbot, dispuesto a ayudarte'),
(6, 'como te llamas?', 'Tarantulino ¿y tu?'),
(7, '¿como estas?', 'excelente'),
(8, 'eres Tarantino?', 'No, soy su parodia dentro de la serie Bojack Horseman'),
(9, '¿que es la inteligencia artificial?', 'La Inteligencia Artificial es la facultad de comprensión y razonamiento que posee un agente que no está vivo, tal es el caso de un robot. Esto permite a un robot comprender la intención de la pregunta y mantener conversaciones. Puede auto-aprender de interacciones previas, puede llevar a cabo gestiones y realizar búsquedas en grandes cantidades de información, todo en segundos.'),
(10, '¿que es un chatbot?', 'Un chatbot es un programa de computadora que utiliza Inteligencia Artificial para mantener conversaciones con los usuarios como si fueran humanos. Funcionan dentro de aplicaciones de chat o pueden ser integrados a las páginas web. Pueden cumplir varias funciones, desde ofrecer el detalle del clima, dar consejos, actuar como asistente del usuario, hasta cumplir las funciones de un amigo online.'),
(11, 'chatbot', 'Un chatbot es un programa de computadora que utiliza Inteligencia Artificial para mantener conversaciones con los usuarios como si fueran humanos. Funcionan dentro de aplicaciones de chat o pueden ser integrados a las páginas web. Pueden cumplir varias funciones, desde ofrecer el detalle del clima, dar consejos, actuar como asistente del usuario, hasta cumplir las funciones de un amigo online.'),
(12, 'inteligencia artificial', 'La Inteligencia Artificial es la facultad de comprensión y razonamiento que posee un agente que no está vivo, tal es el caso de un robot. Esto permite a un robot comprender la intención de la pregunta y mantener conversaciones. Puede auto-aprender de interacciones previas, puede llevar a cabo gestiones y realizar búsquedas en grandes cantidades de información, todo en segundos.'),
(13, 'si', 'si'),
(14, 'no', 'no?'),
(15, 'porque?', 'porque si'),
(16, 'porque si?', 'porque si');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
