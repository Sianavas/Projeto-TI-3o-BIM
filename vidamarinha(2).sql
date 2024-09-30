-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Set-2024 às 06:26
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vidamarinha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `Area` varchar(3) NOT NULL,
  `descrição` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`Area`, `descrição`) VALUES
('CCC', 'CCCCCCCC'),
('CMP', 'COMPRAS'),
('DDD', 'TESTE'),
('FIN', 'FINANCEIRO'),
('GGG', 'Teste'),
('HHH', 'Teste'),
('JUR', 'Juridico'),
('LLL', 'LADO LADO LADO'),
('MAN', 'Manutenção'),
('OPR', 'Operação'),
('VEN', 'VENDAS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escala_monitoramento`
--

CREATE TABLE `escala_monitoramento` (
  `Id_em` int(11) NOT NULL,
  `oceano` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `escala_monitoramento`
--

INSERT INTO `escala_monitoramento` (`Id_em`, `oceano`, `usuario`, `dt_inicio`, `dt_fim`) VALUES
(1, 1, 2, '2024-10-01', '2024-12-31'),
(2, 3, 6, '2024-10-01', '2025-12-31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especies`
--

CREATE TABLE `especies` (
  `id_e` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `especies`
--

INSERT INTO `especies` (`id_e`, `nome`, `Tipo`) VALUES
(1, 'Tubarão Azul', 'Animal'),
(2, 'Peixe Espada', 'Animal'),
(3, 'Algas Azuis', 'Vegetal'),
(4, 'Plantas Marinhas Verdes', 'Vegetal'),
(5, 'Camarão vermelho', 'Animal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especies_regiao`
--

CREATE TABLE `especies_regiao` (
  `id_ind` int(11) NOT NULL,
  `id_esp` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `qtde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `especies_regiao`
--

INSERT INTO `especies_regiao` (`id_ind`, `id_esp`, `id_local`, `qtde`) VALUES
(1, 1, 1, 100),
(2, 1, 2, 100),
(3, 2, 3, 300);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `ide` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `impacto` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`ide`, `nome`, `impacto`) VALUES
(1, 'Maremoto', 'Alto'),
(2, 'Maremoto', 'Medio'),
(3, 'Maremoto', 'Baixo'),
(4, 'Terremoto Escala (7 a 10)', 'Alto'),
(5, 'Terremoto Escala  (4 a 6)', 'Medio'),
(6, 'Terremoto Escala (1 a 5 )', 'Baixo'),
(7, 'Tisunami nível 7 a 10', 'Alto'),
(8, 'Tisunami nível 4 a 6 ', 'Medio'),
(9, 'Tisunami nível 1 a 3', 'Baixo'),
(10, 'Poluição por Plásticos', 'Alto'),
(11, 'Vazamento de Oleo', 'Alto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `função`
--

CREATE TABLE `função` (
  `id_func` int(11) NOT NULL,
  `n_func` varchar(200) NOT NULL,
  `tp_func` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `função`
--

INSERT INTO `função` (`id_func`, `n_func`, `tp_func`) VALUES
(1, 'Mergulhadores Seniores', 6),
(2, 'Observadores 2', 2),
(3, 'Gerente de Manutenção SENIOR', 2),
(4, 'CORREÇÃO DO REGISTO', 2),
(5, 'Analista de TI', 2),
(6, 'Analista 1', 6),
(7, 'Auxiliar de Limpeza', 4),
(8, 'Analista Contabil', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `clogin` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `lid_usr` int(11) NOT NULL,
  `ltp_usr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`clogin`, `password`, `lid_usr`, `ltp_usr`) VALUES
('ADR01', '123', 1, 2),
('AGM01', '123', 2, 3),
('LM01', '456', 6, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oceanos`
--

CREATE TABLE `oceanos` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `oceanos`
--

INSERT INTO `oceanos` (`id`, `nome`) VALUES
(1, 'Oceano Atlantico'),
(2, 'Oceano Indico'),
(3, 'Oceano Pacifico'),
(4, 'Oceano Glacial Antartico'),
(5, 'Mar Cáspio'),
(6, 'Mar Mediterraneo'),
(7, 'Mar Baltico'),
(8, 'Mar Asiatico'),
(9, 'Mar Europeu'),
(10, 'Mar teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencias`
--

CREATE TABLE `ocorrencias` (
  `Ido` int(11) NOT NULL,
  `evento` int(11) NOT NULL,
  `oceano` int(11) DEFAULT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ocorrencias`
--

INSERT INTO `ocorrencias` (`Ido`, `evento`, `oceano`, `data`) VALUES
(1, 11, 5, '2024-09-04'),
(2, 10, 2, '2024-09-15'),
(3, 9, 4, '2024-01-25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipofunção`
--

CREATE TABLE `tipofunção` (
  `id` int(11) NOT NULL,
  `tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipofunção`
--

INSERT INTO `tipofunção` (`id`, `tipo`) VALUES
(1, 'Supervisão'),
(2, 'Gerencia'),
(3, 'Operação'),
(4, 'Limpeza'),
(5, 'Segurança'),
(6, 'Monitoramento'),
(7, 'Contabilidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id_tipousr` int(11) NOT NULL,
  `Tipo_usr` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipousuario`
--

INSERT INTO `tipousuario` (`id_tipousr`, `Tipo_usr`) VALUES
(1, 'Root'),
(2, 'Admin'),
(3, 'Usuário'),
(4, 'Teste'),
(5, 'Apenas Leitura'),
(6, 'wewewe'),
(7, 'sdqdqdqd'),
(8, 'sadasdasd'),
(9, 'wsfdwff');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usr_id` int(11) NOT NULL,
  `usr_nome` varchar(300) NOT NULL,
  `usr_email` varchar(200) NOT NULL,
  `usr_func` int(11) NOT NULL,
  `usr_area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usr_id`, `usr_nome`, `usr_email`, `usr_func`, `usr_area`) VALUES
(1, 'ADRIANO', 'adrianosilva@gmail.com', 1, 'CCC'),
(2, 'ALESSANDRO GOMES', 'Alessandro.Gomes@gmail.com', 3, 'VEN'),
(3, 'Vitor Pascale', 'VPascale@yahoo.com', 4, 'FIN'),
(4, 'Joao Paulo Andrade', 'jpandrade@gmail.com', 2, 'MAN'),
(5, 'Armando Redondo', 'Armando@gmail.com', 7, 'MAN'),
(6, 'Lionel Messi', 'Lm@gmail.com', 1, 'OPR'),
(7, 'Edvaldo Arantes do Nascimento', 'Pele@gmail.com', 2, 'OPR'),
(8, 'Maradona da Silva', 'Maradonaa @yahoo.com.br', 1, 'CMP'),
(9, 'Jose da Silva', 'js@gmail.com', 2, 'JUR'),
(10, 'PEDRO', 'FFFFFF', 4, 'FIN');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`Area`);

--
-- Índices para tabela `escala_monitoramento`
--
ALTER TABLE `escala_monitoramento`
  ADD PRIMARY KEY (`Id_em`),
  ADD KEY `escala_monitoramento_ibfk_3` (`usuario`),
  ADD KEY `escala_monitoramento_ibfk_2` (`oceano`);

--
-- Índices para tabela `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id_e`);

--
-- Índices para tabela `especies_regiao`
--
ALTER TABLE `especies_regiao`
  ADD PRIMARY KEY (`id_ind`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_esp` (`id_esp`);

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`ide`);

--
-- Índices para tabela `função`
--
ALTER TABLE `função`
  ADD PRIMARY KEY (`id_func`),
  ADD KEY `tipo_função` (`tp_func`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`clogin`),
  ADD KEY `login_usuario` (`lid_usr`),
  ADD KEY `login_tpusuario` (`ltp_usr`);

--
-- Índices para tabela `oceanos`
--
ALTER TABLE `oceanos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ocorrencias`
--
ALTER TABLE `ocorrencias`
  ADD PRIMARY KEY (`Ido`),
  ADD KEY `oceano` (`oceano`),
  ADD KEY `ocorrencias_ibfk_1` (`evento`);

--
-- Índices para tabela `tipofunção`
--
ALTER TABLE `tipofunção`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_tipousr`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usr_id`),
  ADD KEY `função` (`usr_func`),
  ADD KEY `Area` (`usr_area`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `escala_monitoramento`
--
ALTER TABLE `escala_monitoramento`
  MODIFY `Id_em` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `especies`
--
ALTER TABLE `especies`
  MODIFY `id_e` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `especies_regiao`
--
ALTER TABLE `especies_regiao`
  MODIFY `id_ind` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `função`
--
ALTER TABLE `função`
  MODIFY `id_func` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `ocorrencias`
--
ALTER TABLE `ocorrencias`
  MODIFY `Ido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipofunção`
--
ALTER TABLE `tipofunção`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id_tipousr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `escala_monitoramento`
--
ALTER TABLE `escala_monitoramento`
  ADD CONSTRAINT `escala_monitoramento_ibfk_2` FOREIGN KEY (`oceano`) REFERENCES `oceanos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `escala_monitoramento_ibfk_3` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usr_id`);

--
-- Limitadores para a tabela `especies_regiao`
--
ALTER TABLE `especies_regiao`
  ADD CONSTRAINT `especies_regiao_ibfk_2` FOREIGN KEY (`id_local`) REFERENCES `oceanos` (`id`),
  ADD CONSTRAINT `especies_regiao_ibfk_3` FOREIGN KEY (`id_esp`) REFERENCES `especies` (`id_e`);

--
-- Limitadores para a tabela `função`
--
ALTER TABLE `função`
  ADD CONSTRAINT `função_ibfk_1` FOREIGN KEY (`tp_func`) REFERENCES `tipofunção` (`id`);

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_tpusuario` FOREIGN KEY (`ltp_usr`) REFERENCES `tipousuario` (`id_tipousr`),
  ADD CONSTRAINT `login_usuario` FOREIGN KEY (`lid_usr`) REFERENCES `usuarios` (`usr_id`);

--
-- Limitadores para a tabela `ocorrencias`
--
ALTER TABLE `ocorrencias`
  ADD CONSTRAINT `ocorrencias_ibfk_1` FOREIGN KEY (`evento`) REFERENCES `eventos` (`ide`),
  ADD CONSTRAINT `ocorrencias_ibfk_2` FOREIGN KEY (`oceano`) REFERENCES `oceanos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`usr_func`) REFERENCES `função` (`id_func`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`usr_area`) REFERENCES `area` (`Area`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
