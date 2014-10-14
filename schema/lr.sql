-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2014 at 09:06 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lr`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cover` text NOT NULL,
  `description` text NOT NULL,
  `createdat` datetime NOT NULL,
  `updatedat` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `cover`, `description`, `createdat`, `updatedat`, `userid`) VALUES
(7, 'sumit', '', 'all my pics', '2014-06-11 02:26:02', '2014-06-11 02:26:02', 9),
(8, 'deep', '', 'all of her pictures', '2014-06-11 03:25:42', '2014-06-11 03:25:42', 9);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'standard_user', ''),
(2, 'Administrator', '{"admin": 1}'),
(3, 'Moderator', '{\r\n"moderator" : 1\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` text NOT NULL,
  `alt` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdat` datetime NOT NULL,
  `updatedat` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `albumid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `picture`, `alt`, `title`, `description`, `createdat`, `updatedat`, `userid`, `albumid`) VALUES
(75, '5397a6bb602101.33969662.bmp', 'my', 'cake baked', 'my birthday cake', '2014-06-11 02:45:47', '2014-06-11 03:40:58', 9, 7),
(76, '5397a765d2a189.17874127.bmp', '', '', '', '2014-06-11 02:48:37', '2014-06-11 02:48:37', 9, 7),
(77, '5397a788273e80.61286074.jpg', '', '', '', '2014-06-11 02:49:12', '2014-06-11 02:49:12', 9, 7),
(78, '5397b137f1f9c9.09740687.jpg', 'none', 'noe at all', 'none at all', '2014-06-11 03:30:31', '2014-06-12 10:37:38', 9, 8),
(79, '5399632c4f7245.03806912.bmp', '', '', '', '2014-06-12 10:22:04', '2014-06-12 10:22:04', 9, 7),
(80, '5399632c6953f9.80151162.bmp', '', '', '', '2014-06-12 10:22:04', '2014-06-12 10:22:04', 9, 7),
(81, '539964940b52d6.49799129.bmp', 'none', 'key pic', 'key pics', '2014-06-12 10:28:04', '2014-06-12 10:31:38', 9, 7),
(82, '539964c19ead50.15380185.bmp', '', '', '', '2014-06-12 10:28:49', '2014-06-12 10:28:49', 9, 7),
(83, '5399651c07a478.05208382.bmp', '', '', '', '2014-06-12 10:30:20', '2014-06-12 10:30:20', 9, 7),
(84, '539965a7303585.35148943.bmp', '', '', '', '2014-06-12 10:32:39', '2014-06-12 10:32:39', 9, 8),
(85, '539965a7332355.28176800.bmp', '', '', '', '2014-06-12 10:32:39', '2014-06-12 10:32:39', 9, 8),
(86, '539965b00c21d4.49625422.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(87, '539965b012b909.10728436.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(88, '539965b0137478.82477290.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(89, '539965b01623d1.69074813.bmp', 'none', 'earth pic', 'none at all', '2014-06-12 10:32:48', '2014-06-12 10:38:06', 9, 8),
(90, '539965b016df41.16725244.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(91, '539965b018d337.09200265.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8),
(92, '539965b0198ea9.05899602.bmp', 'nones s', 'cap pic', 'all the things u need', '2014-06-12 10:32:48', '2014-06-12 10:34:51', 9, 8),
(93, '539965b01a8897.08707060.bmp', '', '', '', '2014-06-12 10:32:48', '2014-06-12 10:32:48', 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `options` varchar(50) NOT NULL,
  `que_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `que_id` (`que_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest` text NOT NULL,
  `replied` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `group`) VALUES
(11, 'summmmit', '363d66c29fbdb29e8ce424eb93611f96ce6478e9', 'ŠýTG³+”(yX[\\“5/''U}#jJÏT6õ', 'sumit', '2014-10-14 06:52:28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(5, 5, '1f47f5b274e28498a2c5a9bc353060912c046404'),
(6, 6, 'ae82bd5a4658f823ba864ab3ad341d4d472496ca'),
(7, 9, '228670928dd66f45d708f49a4d553a0279d849ee'),
(8, 10, '376bf4a6c3391143d0298d9cb62c3088776642ef');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`que_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
