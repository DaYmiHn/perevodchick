-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 24 2019 г., 21:32
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
  `rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `word`, `perevod`, `rating`) VALUES
(16, 'history', 'история', 6),
(17, 'acount', 'плохо', 6),
(18, 'display_errors', 'что display_errors', 5),
(19, 'history', 'история', 5),
(20, 'blog', 'блог', 6),
(21, 'acount', 'плохо', 6),
(22, 'blog', 'блог', 5),
(23, 'English ', 'Английский', 5),
(24, 'students', 'студенты', 5),
(25, 'interactive ', 'интерактивные', 5),
(26, 'history ', 'история', 5),
(27, 'British ', 'Британский', 5),
(28, 'history ', 'история', 5),
(29, 'students ', 'студенты', 5),
(30, 'acount ', 'плохо', 5),
(31, 'answer', 'ответ', 5),
(32, 'finds ', 'находит', 5),
(33, 'boil an egg', 'сварить яйцо', 5),
(34, 'French ', 'Французский', 6),
(35, 'centenarians ', 'долгожители', 4),
(36, 'slovar', 'словарь', 4),
(37, 'acount', 'плохо', 5),
(38, 'slovar', 'словарь', 4),
(39, 'British ', 'Британский', 4),
(40, 'lands ', 'земли', 4),
(41, 'content', 'содержание', 4),
(42, 'index ', 'индекс', 5),
(50, 'good luck', 'удачи', 4),
(52, 'this my fault', 'это моя вина', 5),
(53, 'forgive me', 'прости меня', 4),
(54, 'love at first sight', 'любовь с первого взгляда', 5),
(55, 'thereabouts', 'около того', 4),
(57, 'toggle', 'тумблер', 4),
(58, 'given ', 'учитывая', 4),
(59, 'alphabetically ', 'по алфавиту', 5),
(60, 'reach ', 'достичь', 4),
(61, 'Vault', 'Хранилище', 5),
(62, 'squash ', 'сквош', 4),
(63, 'fixup ', 'исправление', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `fio` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `pass`, `fio`) VALUES
(1, 'admin', 'admin', ''),
(2, 'denis', '123', ''),
(3, 'malika', '228', 'Малика Сулейманова'),
(4, '123', '123', ''),
(5, '228', '228', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
