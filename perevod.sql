-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 16 2020 г., 20:05
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

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
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `user`, `body`) VALUES
(1, 'Малика', 'Man ko kudasai'),
(2, 'admin', 'Говно'),
(4, 'denis', 'Пиздец'),
(14, 'Малика', 'dfgdfdf'),
(15, 'Малика', 'dfg'),
(16, 'Малика', 'dfg'),
(17, 'Малика', 'dfg'),
(18, 'Малика', 'dfgdfg'),
(19, 'Малика', 'Пиздец'),
(20, 'Малика', 'kugiu'),
(21, 'Малика', '87t87tg'),
(22, 'Малика', 'vyhg'),
(23, 'Малика', 'hukbkjbhm'),
(24, 'Малика', 'gertert'),
(25, 'Малика', 'dfgdfg'),
(26, 'Малика', '228'),
(27, 'Малика', '223654654'),
(28, 'Малика', 'Malika');

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `word` text NOT NULL,
  `perevod` text NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `word`, `perevod`, `rating`) VALUES
(16, 'history', 'история', 8),
(17, 'acount', 'плохо', 6),
(18, 'display_errors', 'что display_errors', 7),
(19, 'history', 'история', 7),
(20, 'blog', 'блог', 6),
(21, 'acount', 'плохо', 6),
(22, 'blog', 'блог', 7),
(23, 'English ', 'Английский', 7),
(24, 'students', 'студенты', 7),
(25, 'interactive ', 'интерактивные', 7),
(26, 'history ', 'история', 7),
(27, 'British ', 'Британский', 7),
(28, 'history ', 'история', 7),
(29, 'students ', 'студенты', 7),
(30, 'acount ', 'плохо', 7),
(31, 'answer', 'ответ', 7),
(32, 'finds ', 'находит', 7),
(33, 'boil an egg', 'сварить яйцо', 7),
(34, 'French ', 'Французский', 6),
(35, 'centenarians ', 'долгожители', 6),
(36, 'slovar', 'словарь', 6),
(37, 'acount', 'плохо', 7),
(38, 'slovar', 'словарь', 6),
(39, 'British ', 'Британский', 6),
(40, 'lands ', 'земли', 6),
(41, 'content', 'содержание', 7),
(42, 'index ', 'индекс', 7),
(50, 'good luck', 'удачи', 6),
(52, 'this my fault', 'это моя вина', 7),
(53, 'forgive me', 'прости меня', 6),
(54, 'love at first sight', 'любовь с первого взгляда', 10),
(55, 'thereabouts', 'около того', 6),
(57, 'toggle', 'тумблер', 6),
(58, 'given ', 'учитывая', 6),
(59, 'alphabetically ', 'по алфавиту', 7),
(60, 'reach ', 'достичь', 6),
(61, 'Vault', 'Хранилище', 7),
(62, 'squash ', 'сквош', 6),
(63, 'fixup ', 'исправление', 7),
(64, 'undefined', 'неопределено', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `fio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `pass`, `fio`) VALUES
(1, 'admin', 'admin', 'Денис Савин'),
(2, 'denis', '123', 'Пиздец'),
(3, 'malika', '228', 'Малика'),
(4, '123', '123', 'jhf jhf'),
(5, '228', '228', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
