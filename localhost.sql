-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 18, 2013 at 10:09 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `befitt`
--
CREATE DATABASE IF NOT EXISTS `befitt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `befitt`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` smallint(6) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `position` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `position`) VALUES
(1, 'Workout Programs', 'What workout is best for your goal?', 2),
(2, 'Advance Fat Loss', 'For people looking for specific information about fat loss and the science behind it', 4),
(3, 'Exercises', 'Post questions about specific exercises here.', 3),
(4, 'Supplements', 'Everything about the world of supplements!', 1),
(5, 'Buddy Blogs', 'View other BodySpaces and start your own!', 6),
(6, 'Effective Body', 'If you have used ANY supplements in your life, please post your experience with them here!', 5),
(7, 'Guidelines', 'Post your unique and effective guidelines to support our community. Personalize it in a creative way. ;)', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`id`, `id2`, `title`, `user1`, `user2`, `message`, `timestamp`, `user1read`, `user2read`) VALUES
(1, 1, 'wassuofdgpfshpaujh', 2, 1, 'hello~!', 1387373213, 'yes', 'yes'),
(1, 2, '', 1, 0, 'oki doks!', 1387374006, '', ''),
(3, 1, 'hello', 1, 2, 'wassup?', 1387397599, 'yes', 'no'),
(4, 1, 'wassup?', 6, 5, 'pdosjf[pajdfasdfasdfasd', 1387400643, 'yes', 'no'),
(5, 1, 'fdafdg', 1, 3, 'delete mo na account mo!', 1387403473, 'yes', 'no'),
(6, 1, 'wassup?', 1, 5, 'gsghsgf', 1387403526, 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `parent` smallint(6) NOT NULL,
  `id` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `message` longtext NOT NULL,
  `authorid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `timestamp2` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`parent`, `id`, `id2`, `title`, `message`, `authorid`, `timestamp`, `timestamp2`) VALUES
(1, 1, 1, 'bakit nga ba?', '<strong>ewan ko rin e</strong>', 1, 1387373060, 1387373092),
(1, 1, 2, '', '<div style="text-align:center;">UTOT MO!! BAHO MO!!!</div>', 1, 1387373092, 1387373092),
(3, 2, 1, 'Yes', 'sfpogijefpgafgadf', 1, 1387400952, 1387400952),
(7, 3, 1, 'Vince''s Guide', 'Push up lang pre.. :)) hahah', 1, 1387402086, 1387402086);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `trackid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `exercise` text NOT NULL,
  `description` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`trackid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` blob NOT NULL,
  `signup_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `avatar`, `signup_date`) VALUES
(1, 'vince', '87e1f221a672a14a323e57bb65eaea19d3ed3804', 'vincentlim_29@yahoo.com', 0x7468756d62362e706e67, 1387372385),
(2, 'mike', '1b5798350e33505eca2f5252d17d51aed38561df', 'mikeld@example.com', '', 1387373134),
(3, 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'admin@yahoo.com', '', 1387373880),
(4, 'mackintosh', '6400d1f4bfe54668b754d40bf5f86ae8181bbe51', 'mack@asd.com', '', 1387373952),
(5, 'mack', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'mac@mac.com', 0x6167796d6e444b5f343630735f76342e6a7067, 1387399512),
(6, 'tester', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'tester@tester.com', 0x7468756d62342e706e67, 1387399544);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
