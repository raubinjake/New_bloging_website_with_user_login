-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2021 at 01:08 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp2k16`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(150) NOT NULL,
  `article_body` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `article_title`, `article_body`, `user_id`) VALUES
(1, 'Demo Article ', 'testing', 1),
(2, 'Demo testing', 'dfdsfdsf', 1),
(9, 'This is my first Articles About Cricket', 'Ravi Shastri, the head coach of India\'s men\'s cricket team, received the first dose of the COVID-19 vaccine in Ahmedabad on Tuesday. \"Got the first dose of COVID-19 vaccine. Thank you to the amazing medical professionals & scientists for empowering India against the pandemic,\" Shastri tweeted along with a photo of him getting the vaccination shot. \"Extremely impressed with the professionalism shown by Kantaben & her team at Apollo, Ahmedabad in dealing with COVID-19 vaccination,\" the former India all-rounder added.\r\n\r\nGot the first dose of COVID-19 vaccine. Thank you to the amazing medical professionals & scientists for empowering India against the pandemic.', 4),
(10, 'This is my first Articles About Virat Kohali captain of BCCI ', 'On Monday became the first Indian to cross 100 million followers on Instagram. The right-handed batsman is also the first cricketer in the world to achieve the landmark and the International Cricket Council (ICC) took to the social media site to welcome Kohli into an elite club that features football stars like Cristiano Ronaldo, Lionel Messi and Neymar, among other celebrities. After Kohli, actor Priyanka Chopra is the most followed Indian on Instagram with over 60 million followers.\r\n\r\nApart from Instagram, Kohli also has a massive fan-following on other social media platforms like Twitter and Facebook. As of now he has 40.8 million followers on the micro-blogging site, while has over 36 million likes on Facebook.', 5),
(11, 'Virat Kohli Becomes First Indian To Cross 100 Million Followers On Instagram', 'On Monday became the first Indian to cross 100 million followers on Instagram. The right-handed batsman is also the first cricketer in the world to achieve the landmark and the International Cricket Council (ICC) took to the social media site to welcome Kohli into an elite club that features football stars like Cristiano Ronaldo, Lionel Messi and Neymar, among other celebrities. After Kohli, actor Priyanka Chopra is the most followed Indian on Instagram with over 60 million followers.\r\n\r\nApart from Instagram, Kohli also has a massive fan-following on other social media platforms like Twitter and Facebook. As of now he has 40.8 million followers on the micro-blogging site, while has over 36 million likes on Facebook.\r\n\r\nPortugal and Juventus star Cristiano Ronaldo is the most followed individual on Instagram with over 266 million followers. He is followed by famous singer Ariana Grande who has 224 million followers, while retired WWE superstar Dwayne Johnson is third on the list with 220 million followers.\r\n\r\nKohli is currently in Ahmedabad with the Indian cricket team as they gear up for the fourth and the final Test against England, beginning March 4.\r\n\r\nKohli, who recently became the most successful Indian skipper on home soil, has been training hard ahead of the series-deciding match.', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`) VALUES
(1, 'suneja', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ajay', 'suneja', 'ajay.suneja1993@gmail.com'),
(4, 'raubinjake', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Raubin', 'Jake', 'robin@gmail.com'),
(5, 'sensatish', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Satish', 'Sen', 'satish@gmail.com'),
(6, 'mohangulati', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Mohan', 'Gulati', 'gulati@gamil.com'),
(7, 'Arun', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Arun', 'Yadav', 'yadav@gmail.com'),
(8, 'mohangulati', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Mohan', 'Gulati', 'gulati8@gamil.com'),
(9, 'Arun', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Arun', 'AAshik', 'arun@gmai.com'),
(10, 'sarojyadav', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Saroj', 'Yadav', 'saroj@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
