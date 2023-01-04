-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 04 Oca 2023, 14:08:37
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gadgetstore`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`categoryId`, `cname`) VALUES
(1, 'aksiyon'),
(2, 'hayvanlar'),
(3, 'arabalar'),
(4, 'oyuncak bebekler'),
(5, 'yapbozlar'),
(6, 'spor ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gadgets`
--

DROP TABLE IF EXISTS `gadgets`;
CREATE TABLE IF NOT EXISTS `gadgets` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(50) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `itemdesc` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `quantity` int(5) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `gadgets`
--

INSERT INTO `gadgets` (`itemid`, `itemname`, `categoryId`, `itemdesc`, `price`, `image`, `Gender`, `quantity`, `flag`) VALUES
(1, 'oyuncak1', 1, 'kahraman', 245, 'images\\Actionfigures\\action_figure_1.jpg', 'Girl', 2, 1),
(2, 'oyuncak2', 1, 'oyuncak', 50, 'images\\Actionfigures\\action_figure_2.jpg', 'Girl', 9, 1),
(3, 'oyuncak3', 1, 'oyuncak', 40, 'images\\Actionfigures\\action_figure_3.jpg', 'Girl', 9, 1),
(4, 'oyuncak4', 1, 'oyuncak', 400, 'images\\Actionfigures\\action_figure_4.jpg', 'Boy', 10, 1),
(5, 'oyuncak5', 1, 'oyuncak', 60, 'images\\Actionfigures\\action_figure_5.jpg', 'Boy', 10, 1),
(6, 'oyuncak6', 1, 'oyuncak', 260, 'images\\Actionfigures\\action_figure_6.jpg', 'Girl', 8, 1),
(7, 'oyuncak7', 2, 'oyuncak', 260, 'images\\Animals\\Animal1.jpg', 'Girl', 9, 1),
(8, 'oyuncak8', 2, 'oyuncak', 450, 'images\\Animals\\Animal2.jpg', 'Girl', 10, 1),
(9, 'oyuncak9', 2, 'oyuncak', 100, 'images\\Animals\\Animal3.jpg', 'Girl', 10, 1),
(10, 'oyuncak10', 2, 'oyuncak', 20, 'images\\Animals\\Animal4.jpg', 'Boy', 10, 1),
(11, 'oyuncak11', 2, 'oyuncak', 150, 'images\\Animals\\Animal5.jpg', 'Boy', 10, 1),
(12, 'oyuncak12', 2, 'oyuncak', 150, 'images\\Animals\\Animal6.jpg', 'Boy', 10, 1),
(13, 'araba1', 3, 'oyuncak', 150, 'images\\Cars\\Car1.jpg', 'Boy', 7, 1),
(14, 'araba2', 3, 'oyuncak', 150, 'images\\Cars\\Car2.jpg', 'Girl', 10, 1),
(15, 'araba3', 3, 'oyuncak', 150, 'images\\Cars\\Car3.jpg', 'Boy', 10, 1),
(16, 'araba4', 3, 'oyuncak', 50, 'images\\Cars\\Car4.jpg', 'Boy', 10, 1),
(17, 'araba5', 3, 'oyuncak', 150, 'images\\Cars\\Car5.jpg', 'Girl', 10, 1),
(18, 'araba6', 3, 'oyuncak', 150, 'images\\Cars\\Car6.jpg', 'Boy', 10, 1),
(19, 'bebek1', 4, 'oyuncak', 150, 'images\\Dolls\\Doll1.jpg', 'Boy', 7, 1),
(20, 'bebek2', 4, 'oyuncak', 150, 'images\\Dolls\\Doll2.jpg', 'Boy', 10, 1),
(21, 'bebek3', 4, 'oyuncak', 150, 'images\\Dolls\\Doll3.jpg', 'Girl', 10, 1),
(22, 'bebek4', 4, 'oyuncak', 68, 'images\\Dolls\\Doll4.jpg', 'Girl', 10, 1),
(23, 'bebek5', 4, 'oyuncak', 68, 'images\\Dolls\\Doll5.jpg', 'Boy', 10, 1),
(24, 'bebek6', 4, 'oyuncak', 68, 'images\\Dolls\\Doll6.jpg', 'Girl', 10, 1),
(25, 'yapboz1', 5, 'oyuncak', 150, 'images\\Puzzle\\puzzle_1.jpg', 'Boy', 10, 1),
(26, 'puzzle2', 5, 'wooden cube puzzle', 150, 'images\\Puzzle\\puzzle_2.jpg', 'Boy', 10, 1),
(27, 'puzzle3', 5, 'sphere puzzle lvl hard', 150, 'images\\Puzzle\\puzzle_3.jpg', 'Girl', 10, 1),
(28, 'puzzle4', 5, 'interlocked puzzle', 68, 'images\\Puzzle\\puzzle_4.jpg', 'Girl', 10, 1),
(29, 'puzzle5', 5, 'scrabble', 68, 'images\\Puzzle\\puzzle_5.jpg', 'Boy', 10, 1),
(30, 'puzzle6', 5, 'USA map puzzle', 68, 'images\\Puzzle\\puzzle_6.jpg', 'Girl', 10, 1),
(31, 'sports1', 6, 'baseball bat with stand', 150, 'images\\Sports\\Sports1.jpg', 'Boy', 10, 1),
(32, 'sports2', 6, 'blue football size small', 150, 'images\\Sports\\Sports2.jpg', 'Boy', 10, 1),
(33, 'sports3', 6, 'retro football size regular', 150, 'images\\Sports\\Sports3.jpg', 'Girl', 10, 1),
(34, 'sports4', 6, 'green softball', 68, 'images\\Sports\\Sports4.jpg', 'Girl', 10, 1),
(35, 'sports5', 6, 'squishy water ball for kids', 68, 'images\\Sports\\Sports5.jpg', 'Boy', 10, 1),
(36, 'sports6', 6, 'full bowling set plastic', 68, 'images\\Sports\\Sports6.jpg', 'Girl', 10, 1),
(37, 'Sport7', 6, 'Cricket kit', 24, 'images\\Sports\\Sports7.jpg', '', 15, 1),
(42, 'oyuncak5', 1, 'oyuncak', 60, 'images\\Actionfigures\\action_figure_5.jpg', 'Boy', 10, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `username`, `itemid`, `itemname`, `price`) VALUES
(27, 'buse@hspo', 13, 'araba1', 150);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT 'Customer',
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `phone` bigint(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `usertype`, `address`, `city`, `state`, `phone`) VALUES
(19, 'buse@hspo', '202cb962ac59075b964b07152d234b70', 'Customer', 'fsqfqwfq', 'qweqwe', 'qweqweqwe', 1231231231),
(21, 'asdsadasd@asfasfas', '9bf3c2ffadb988a272e20db91bf2ee71', 'Customer', 'fgyjÄ±', 'dftgy', 'sdfgyj', 5374586214),
(22, 'busenur@gmail.com', '99994d1552395a36fefc41229b85a9d2', 'Customer', 'asfdf', 'dsfgh', 'erdg', 5412457896);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
