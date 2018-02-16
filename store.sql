-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2018 at 06:34 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Deimantas Abelskis');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `genre_id`, `description`) VALUES
(1, 'Trokštu kurti ', 1, 1, 'Apie mano gyvenimą, kuris sudarytas iš nuliukų ir vienetukų. Kaip programavimas ir naujų technologijų kūrimas keičia ne tik mano bet ir aplinkinių gyvenimus. Kodėl laimingo gyvenimo paieška nėra lengva ir kodėl žmonės moka didelius pinigus už tai ką daryčiau jiems už dyką. Apie mano gyvenimą, kuris sudarytas iš nuliukų ir vienetukų. Kaip programavimas ir naujų technologijų kūrimas keičia ne tik mano bet ir aplinkinių gyvenimus. Kodėl laimingo gyvenimo paieška nėra lengva ir kodėl žmonės moka didelius pinigus už tai ką daryčiau jiems už dyką. Apie mano gyvenimą, kuris sudarytas iš nuliukų ir vienetukų. Kaip programavimas ir naujų technologijų kūrimas keičia ne tik mano bet ir aplinkinių gyvenimus. Kodėl laimingo gyvenimo paieška nėra lengva ir kodėl žmonės moka didelius pinigus už tai ką daryčiau jiems už dyką. Apie mano gyvenimą, kuris sudarytas iš nuliukų ir vienetukų. Kaip programavimas ir naujų technologijų kūrimas keičia ne tik mano bet ir aplinkinių gyvenimus. Kodėl laimingo gyvenimo paieška nėra lengva ir kodėl žmonės moka didelius pinigus už tai ką daryčiau jiems už dyką.');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Autobiografija');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `date`, `book_id`) VALUES
(1, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(2, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(3, 'DeimantasA', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(4, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(5, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(6, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(7, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(8, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(9, 'Abelskis', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(10, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(11, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(12, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(13, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(14, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(15, 'DeimantasA', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(16, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(17, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(18, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(19, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(20, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(21, 'Abelskis', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(22, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(23, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(24, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(25, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(26, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(27, 'DeimantasA', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(28, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(29, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(30, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(31, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(32, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(33, 'Abelskis', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(34, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(35, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(36, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(37, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(38, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(39, 'DeimantasA', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(40, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(41, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(42, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(43, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(44, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(45, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(46, 'Abelskis', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(47, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(48, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(49, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(50, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(51, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(52, 'DeimantasA', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(53, 'Deimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(54, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(55, 'Deimantė', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1),
(56, 'ITDeimantas', '860382744', 'ddeimantass@gmail.com', '2018-02-16 18:01:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
