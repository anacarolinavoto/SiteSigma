-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Ago-2022 às 17:12
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sitesigma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `categoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`categoriaID`, `Nome`, `Ativo`) VALUES
(1, 'carros', 1),
(2, 'flores', 1),
(3, 'bonequinhos', 1),
(4, 'comidinhas', 1),
(5, 'roupas', 1),
(6, 'adesivos', 1),
(7, 'animais', 1),
(8, 'bicicleta', 1),
(9, 'brincos', 1),
(10, 'tatoos', 1),
(11, 'sapatinhos', 0),
(12, 'aaaaa', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `produtosID` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` longtext NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `preco` float NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `categoriaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`produtosID`, `nome`, `descricao`, `imagem`, `preco`, `ativo`, `categoriaID`) VALUES
(2, 'motorista', 'macaquinho com chapéu preto', 'nft0.jpg', 5000, 1, 1),
(4, 'rei', 'macaquinho rei colorido', 'nft1.jpg', 3000, 1, 1),
(5, 'jorge curioso', 'macaquinho pescador', 'nft2.jpg', 4500, 1, 1),
(6, 'azuleto', 'macaquinho chato azul', 'nft3.jpg', 1500, 1, 1),
(7, 'capitão', 'macaquinho capitão lazer nos olhos', 'nft4.jpg', 12000, 1, 1),
(8, 'americano', 'radical motoqueiro', 'nft5.jpg', 3000, 1, 1),
(9, 'americano', 'macaquinho radical motoqueiro', 'nft5.jpg', 3000, 1, 1),
(10, 'robô', 'macaquinho sem olho robótico', 'nft6.jpg', 5500, 1, 1),
(11, 'pink', 'macaquinho rosa de chapéu', 'nft7.jpg', 11000, 1, 1),
(12, 'cowboy', 'macaquinho de rodeio', 'nft8.jpg', 40000, 1, 1),
(13, 'punk', 'macaquinho encrenqueiro', 'nft9.jpg', 3000, 1, 1),
(14, 'piloto', 'macaquinho triste de vestido', 'nft10.jpg', 7000, 1, 1),
(15, 'torcedor', 'macaquinho de juliete torcendo pro palmeiras', 'nft11.jpg', 9000, 1, 1),
(16, 'lixo', 'macaquinho feliz coberto de coisas desconhecidas', 'nft12.jpg', 5000, 1, 1),
(17, 'estiloso', 'macaquinho com brinco de midia hetero top', 'nft13.jpg', 21000, 1, 1),
(18, 'futurista', 'macaquinho de terno no metaverso', 'nft14.jpg', 98000, 1, 1),
(19, 'haviano', 'macaquinho entregador de pizza comendo pizza no havai', 'nft15.jpg', 4000, 1, 1),
(20, 'one directioner', 'macaquinho descolado que gosta de 1d', 'nft16.jpg', 7000, 1, 1),
(21, 'outro', 'macaquinho do cruzeiro? com um apito', 'nft17.jpg', 34000, 1, 1),
(22, 'dente azul', 'macaquinho rindo com dentes de diamante', 'nft18.jpg', 9800, 1, 1),
(23, 'gelado', 'macaquinho rei do artico', 'nft19.jpg', 2000, 1, 1),
(24, 'jackson', 'macaquinho com filtro azul dancarino', 'nft20.jpg', 7300, 1, 1),
(25, 'style', 'macaquinho com o moletom da supreme', 'nft21.jpg', 1000, 1, 1),
(26, 'onça', 'macaquinho social com touca', 'nft22.jpg', 22000, 1, 1),
(27, 'adidas', 'macaquinho repetido mas com fundo diferente', 'nft23.jpg', 13000, 1, 1),
(28, 'albino', 'macaquinho bossass da antartica', 'nft24.jpg', 54000, 1, 1),
(29, 'corinthiano', 'macaquinho do corinthians', 'nft25.jpg', 4000, 1, 1),
(30, 'pirata azul', 'macaquinho com tapaolho blue', 'nft26.jpg', 30000, 1, 1),
(31, 'baby', 'macaquinho bebe', 'nft27.jpg', 13000, 1, 1),
(32, 'rainbow teeth', 'macaquinho sorridente legal', 'nft28.jpg', 7000, 1, 1),
(33, 'chapado em drugs', 'macaquinho louco', 'nft29.jpg', 61000, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarioID` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `senha` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuarioID`, `name`, `senha`, `email`) VALUES
(1, 'ana', '2005', 'anacarolina.voto@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoriaID`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`produtosID`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarioID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `produtosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarioID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
