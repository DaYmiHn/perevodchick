-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 21 2019 г., 13:52
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `perevod`
--

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `word` text NOT NULL,
  `perevod` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `word`, `perevod`, `rating`) VALUES
(16, 'history', 'история', 3),
(17, 'acount', 'плохо', 4),
(18, 'display_errors', 'что display_errors', 4),
(19, 'history', 'история', 3),
(20, 'blog', 'блог', 3),
(21, 'acount', 'плохо', 4),
(22, 'blog', 'блог', 3),
(23, 'English ', 'Английский', 3),
(24, 'students', 'студенты', 3),
(25, 'interactive ', 'интерактивные', 3),
(26, 'history ', 'история', 3),
(27, 'British ', 'Британский', 3),
(28, 'history ', 'история', 3),
(29, 'students ', 'студенты', 3),
(30, 'acount ', 'плохо', 3),
(31, 'answer', 'ответ', 3),
(32, 'finds ', 'находит', 3),
(33, 'boil an egg', 'сварить яйцо', 3),
(34, 'French ', 'Французский', 6),
(35, 'centenarians ', 'долгожители', 4),
(36, 'slovar', 'словарь', 3),
(37, 'acount', 'плохо', 3),
(38, 'slovar', 'словарь', 4),
(39, 'British ', 'Британский', 4),
(40, 'lands ', 'земли', 4),
(41, 'content', 'содержание', 2),
(42, 'index ', 'индекс', 3),
(50, 'good luck', 'удачи', 2),
(52, 'this my fault', 'это моя вина', 3),
(53, 'forgive me', 'прости меня', 4),
(54, 'love at first sight', 'любовь с первого взгляда', 3),
(55, 'thereabouts', 'около того', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `pass`) VALUES
(1, 'admin', 'admin'),
(2, 'denis', '123'),
(3, 'malika', '228'),
(4, '123', '123'),
(5, '228', '228');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
