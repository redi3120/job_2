-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2016 г., 04:12
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `data` datetime NOT NULL,
  `tags` text NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `data`, `tags`, `img`) VALUES
(85, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porttitor vulputate quam, porta convallis justo blandit quis. Etiam molestie turpis sed lectus auctor, a bibendum ex maximus. Fusce sodales iaculis lacus et maximus. Praesent malesuada felis quis pretium faucibus. Maecenas vel viverra erat. Nunc vehicula est quam. Pellentesque pretium sapien id tellus pellentesque gravida. Donec dictum turpis vitae volutpat tempus. Sed enim nulla, aliquet ac urna sit amet, cursus pulvinar libero. Nulla vestibulum hendrerit ornare. Donec quis arcu sed purus bibendum tempor. Cras fringilla ante ac sapien volutpat, id egestas arcu posuere. Maecenas finibus luctus odio et aliquam. Ut mi nibh, ullamcorper commodo massa id, facilisis malesuada odio. Nulla et venenatis turpis, et condimentum nulla. Maecenas maximus ornare diam vel fringilla.\r\n\r\nMauris iaculis in massa at pulvinar. Nullam nisi neque, sodales eget pretium sodales, accumsan iaculis nisl. Etiam tincidunt blandit orci ac ultrices. Phasellus orci metus, scelerisque ac bibendum quis, lobortis eu turpis. Proin at dapibus diam, et tincidunt enim. Cras consequat neque ipsum, ut sollicitudin eros varius vel. Proin eget purus dui.\r\n\r\nNam fermentum sem nec dui facilisis, at scelerisque turpis vehicula. Cras lacinia fringilla lacus, sit amet tempor nisl suscipit at. Donec non sem in tortor convallis ultricies in et tellus. Vivamus aliquam, lacus ac maximus fringilla, erat nibh pellentesque orci, eget efficitur augue dui vitae nulla. Sed fermentum dolor ac tellus sodales, ut tristique justo viverra. Maecenas ac diam ac velit consequat eleifend. Vestibulum ultricies gravida iaculis. Proin dapibus leo et turpis volutpat aliquam.\r\n\r\nDonec ut nunc accumsan, pellentesque ipsum a, mattis risus. Fusce accumsan cursus sem eu tincidunt. Cras dictum lacinia ipsum ut ornare. Maecenas vel mattis lacus, sit amet posuere risus. Ut quis nunc imperdiet, cursus turpis vitae, tincidunt dolor. Suspendisse id eros vitae ex efficitur ullamcorper. Mauris venenatis ipsum tincidunt vulputate fermentum. Proin nec quam at elit elementum maximus. Integer fringilla at nunc quis facilisis. Donec a euismod lacus. Mauris tristique bibendum turpis venenatis fringilla. Integer odio erat, pellentesque ac lorem et, accumsan tempus lorem. Aliquam ut tincidunt nulla.\r\n\r\nMaecenas aliquam, nunc in scelerisque sodales, tortor lorem commodo purus, vitae aliquet odio mi ac lacus. Nunc ut orci ac magna consectetur tempus at quis eros. Praesent fringilla malesuada massa et euismod. Sed quis hendrerit tortor. Vestibulum massa magna, pharetra nec porta ut, egestas id dui. Phasellus facilisis lacus iaculis, ornare augue eget, ultricies justo. Nullam blandit pharetra diam et ullamcorper. Maecenas iaculis ut odio eget ornare.', '2016-03-20 04:02:54', 'Lorem ipsum', '8pVcxPRTFEM.jpg'),
(86, 'Donec laoreet', 'Donec laoreet mollis nisi vitae dictum. Sed laoreet lorem a augue luctus, sit amet consequat eros ultrices. Aliquam pulvinar sit amet arcu sed blandit. Praesent eu volutpat lorem, et aliquam est. Praesent dictum, diam non tincidunt pellentesque, metus velit sagittis ex, a blandit nulla massa sed massa. Maecenas auctor rutrum hendrerit. Curabitur posuere augue libero, in semper orci convallis eu. Nunc euismod est libero, at fringilla lorem iaculis vitae. Phasellus in turpis nulla. Sed sed tortor ac ex sollicitudin porttitor in eu enim. Duis dolor metus, faucibus eget lacus vitae, condimentum porttitor magna.\r\n\r\nQuisque varius velit at felis blandit viverra. Fusce lectus dui, bibendum eget laoreet gravida, congue sed nibh. Etiam id diam eget felis auctor malesuada. Fusce a varius nisl, a commodo eros. Vivamus est lectus, viverra et maximus in, aliquet in elit. Sed efficitur erat eget dui mollis, non eleifend arcu venenatis. Pellentesque eleifend ornare blandit. Etiam orci metus, condimentum id orci in, ullamcorper ultricies nunc. Sed ullamcorper viverra mi, id hendrerit metus egestas non. Proin bibendum, enim ut pellentesque efficitur, urna massa iaculis elit, ut vulputate mi odio a enim. Nulla at justo est. Vivamus eleifend dapibus felis, dictum porttitor diam. Donec vitae sapien dictum, aliquam eros vel, blandit libero. Praesent non odio id magna porttitor lobortis a vitae mi. Donec ullamcorper rutrum elit in accumsan.', '2016-03-20 04:03:44', 'Donec laoreet', 'C3Atl9smsrU.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
