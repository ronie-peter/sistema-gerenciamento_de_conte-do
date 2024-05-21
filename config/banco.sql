-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jan-2022 às 04:21
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
create database hcetv;

use hcetv;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hcetv`
/* ALTERAR O NOME DO BANCO DE DADOS ASSIM QUE POSSÍVEL */

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

-- CREATE TABLE `events` (
--   `id` int(11) NOT NULL,
--   `title` varchar(30) NOT NULL,
--   `color` varchar(15) NOT NULL,
--   `start` datetime NOT NULL,
--   `end` datetime NOT NULL,
--   `responsible` varchar(255) NOT NULL,
--   `status` tinyint(1) NOT NULL,
--   `ordinance` varchar(2000) NOT NULL,
--   `term` date NOT NULL,
--   `phone` varchar(17) NOT NULL,
--   `email` varchar(255) NOT NULL,
--   `dataCadastro` datetime NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `login` varchar(60) NOT NULL,
  `password` varchar(40) NOT NULL,
  `permission` tinyint(1) NOT NULL,
  `dataCadastro` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `publishers` (`id`, `name`, `login`, `password`, `permission`, `dataCadastro`) VALUES
(default, 'Ronie Peter Sineiro', 'admin@admin.com', 'Estacio@123', 1, default);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `events`
--
-- ALTER TABLE `events`
--   ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
-- ALTER TABLE `publishers`
--   ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `events`
--
-- ALTER TABLE `events`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `users`
--
-- ALTER TABLE `publishers`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
-- COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
