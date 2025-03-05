-- Banco de dados: `database`
-----------------------------------------------------------


-- Estrutura para tabela `alunos`

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `matricula` bigint(15) NOT NULL,
  `nomeA` varchar(255) NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-----------------------------------------------------------

-- Estrutura para tabela `disciplinas`

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `sigla` varchar(5) NOT NULL,
  `nomeD` varchar(255) NOT NULL,
  `cargaHoraria` int(100) NOT NULL,
  `periodo` tinyint(6) NOT NULL,
  `limiteFaltas` tinyint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-----------------------------------------------------------

-- Inserindo dados para a tabela `disciplinas`

INSERT INTO `disciplinas` (`id`, `sigla`, `nomeD`, `cargaHoraria`, `periodo`, `limiteFaltas`) VALUES
(1, 'FAC', 'Fundamentos de programação', 80, 1, 20),
(2, 'MAC', 'Matemática Computacional', 80, 1, 20),
(3, 'CAW', 'Construção de Aplicações Web', 20, 2, 20),
(4, 'SOP', 'Sistemas Operacionais', 80, 3, 20),
(5, 'DAW', 'Desenvolvimento de Aplicações Web', 80, 3, 20),
(6, 'EMP', 'Empreendedorismo', 20, 3, 10);


-- Alterando dados para a tabela `disciplinas`

UPDATE `disciplinas` SET `cargaHoraria`='80' WHERE sigla = 'CAW';
UPDATE `disciplinas` SET `periodo`='2' WHERE id = '4';


-- Buscando dados para a tabela `disciplinas`

SELECT * FROM `disciplinas` WHERE periodo = '3';


-- Apagamdo dados para a tabela `disciplinas`

DELETE FROM `disciplinas` WHERE sigla = 'DAW';

-----------------------------------------------------------

-- Inserindo dados para a tabela `alunos`

INSERT INTO `alunos` (`id`, `matricula`, `nomeA`, `cpf`, `email`) VALUES 
(1, 202300000001, 'Ana Souza', 12345678901, 'ana.souza@email.com'), 
(2, 202300000002, 'Bruno Lima	', 23456789012, 'bruno.lima@email.com'), 
(3, 202400000003, 'Carla Mendes	', 34567890123, 'carla.mendes@email.com'), 
(4, 202400000004, 'Diego Ferreira', 45678901234, 'diego.ferreira@email.com'), 
(5, 202400000005, 'Elisa Martins	', 56789012345, 'elisa.martins@email.com');


-- Alterando dados para a tabela `disciplinas`

UPDATE `alunos` SET `nomeA` = 'Dionísio' WHERE matricula = 202400000004;
UPDATE `alunos` SET `email`='dionisio.ferreira@email.com' WHERE id = 4;


-- Buscando dados para a tabela `alunos`

SELECT `matricula`, `nomeA`, `email` FROM `alunos` WHERE 1;


-- Apagamdo dados para a tabela `alunos`

DELETE FROM `alunos` WHERE cpf = 56789012345;