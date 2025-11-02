-- -------------   << Desafio EngeNet Banco de Dados >>   ---------------
--
--                SCRIPT DE CRIACAO (DDL)
--
-- Data de Criacao ........: 31/10/2025
-- Autor(es) ..............: João Igor Pereira da Costa
-- Banco de Dados .........: MySql 8.0
-- Base de Dados (nome) ...: db_transito
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--  
--
-- Ultimas Alteracoes:
--   
--
-- -------------------------------------------------------
USE `db_transito`;

-- ----------------------------
-- Tabela `modelo`
-- ----------------------------
INSERT INTO `modelo` (`modelo`, `nomeModelo`) VALUES
(101010, 'Sedan Médio'),
(102020, 'Caminhão Pesado'),
(103030, 'Gol Bolinha'),
(104040, 'Picape'),
(105050, 'Motocicleta'),
(106060, 'Guindaste Zulaine 75');

-- ----------------------------
-- Tabela `categoria`
-- ----------------------------
INSERT INTO `categoria` (`categoria`, `nomeCategoria`) VALUES
(10, 'Automóvel'),
(20, 'Automóvel Elétrico'),
(30, 'Caminhão'),
(40, 'Motocicleta');

-- ----------------------------
-- Tabela `telefone`
-- ----------------------------
INSERT INTO `telefone` (`telefone`) VALUES
('(61) 99999-1111'),
('(61) 3322-1111'),
('(61) 98888-2222'),
('(61) 97777-3333'),
('(61) 3455-3333'),
('(61) 96666-4444'),
('(61) 95555-5555'),
('(61) 94444-6666'),
('(61) 93333-7777'),
('(61) 92222-8888'),
('(61) 3232-8888'),
('(61) 91111-9999'),
('(61) 99000-0000');

-- ----------------------------
-- Tabela `Proprietario`
-- ----------------------------
INSERT INTO `Proprietario`
(`cpf`, `nome`, `idade`, `dataNascimento`, `sexo`, `endereco`, `estado`, `cidade`, `bairro`, `idTelefone`)
VALUES
('93018700023', 'Ana Beatriz Silva', 30, '1995-04-12', 'F', 'Rua das Flores, 10', 'DF', 'Brasília', 'Asa Sul', 2),
('38795056084', 'Bruno Costa Marques', 45, '1980-11-20', 'M', 'Avenida Central, 200', 'DF', 'Taguatinga', 'Centro', 3),
('14198215049', 'Carla Dias Oliveira', 22, '2003-01-30', 'F', 'Quadra 101, Casa 5', 'DF', 'Ceilândia', 'Sul', 4),
('11743916000', 'Daniel Moreira Alves', 50, '1975-07-05', 'M', 'SHIS QL 10, Conj 3', 'DF', 'Brasília', 'Lago Sul', 1),
('s21242027076', 'Eduarda Ferreira Lima', 28, '1997-02-15', 'F', 'Rua 7, Lote 8', 'DF', 'Águas Claras', 'Norte', 5),
('81476193088', 'Fábio Gomes Pereira', 38, '1987-09-01', 'M', 'QNM 20, Conj A', 'DF', 'Ceilândia', 'Norte', 6),
('63126483038', 'Gabriela Martins Luz', 65, '1960-12-10', 'F', 'SQN 308, Bloco B', 'DF', 'Brasília', 'Asa Norte', 7),
('41311164057', 'Hugo Nogueira Barros', 19, '2006-05-25', 'M', 'Avenida Castanheiras', 'DF', 'Águas Claras', 'Sul', 8),
('74117219057', 'Isabela Ribeiro Santos', 33, '1992-08-18', 'F', 'QRSW 2, Bloco C', 'DF', 'Brasília', 'Sudoeste', 9),
('50807659096', 'João Vítor Azevedo', 41, '1984-03-22', 'M', 'Condomínio Sol Nascente', 'DF', 'Gama', 'Leste', 10);

-- ----------------------------
-- Tabela `local`
-- ----------------------------
INSERT INTO `local` (`latitude`, `longitude`, `velocidadePermitida`) VALUES
(-15.7972, -47.8845, 60),
(-15.8345, -47.9231, 80),
(-15.8690, -48.0185, 60),
(-15.8288, -47.9501, 50),
(-15.7511, -47.8708, 80);

-- ----------------------------
-- Tabela `Agente`
-- ----------------------------
INSERT INTO `Agente` (`matricula`, `nome`, `dataContratacao`, `tempoServico`) VALUES
(9001, 'Agente Carlos Souza', '2010-05-15', '185'),
(9002, 'Agente Patrícia Melo', '2018-02-01', '116'),
(9003, 'Agente Ricardo Neves', '2025-10-31', '1');

-- ----------------------------
-- Tabela `Tipos_Infracao`
-- ----------------------------
INSERT INTO `Tipos_Infracao` (`tipoInfra`, `valor`) VALUES
('Excesso de Velocidade - até 20%', 130.16),
('Excesso de Velocidade - 20% a 50%', 195.23),
('Avançar Sinal Vermelho', 293.47),
('Estacionar em local proibido', 195.23),
('Usar celular ao dirigir', 293.47),
('Não usar cinto de segurança', 195.23);

-- ----------------------------
-- Tabela `Veiculo`
-- ----------------------------
INSERT INTO `Veiculo`
(`placa`, `chassi`, `corPredominante`, `anoFabricacao`, `modelo`, `categoria`, `cpf`) VALUES
('JKE1A11', 'CHASSI111ABCDEF', 'Preto', 2022, 101010, 10, '93018700023'),
('BRA2B22', 'CHASSI222ABCDEF', 'Branco', 2023, 102020, 10, '38795056084'),
('HGT3C33', 'CHASSI333ABCDEF', 'Vermelho', 2021, 105050, 10, '14198215049'),
('DFE4D44', 'CHASSI444ABCDEF', 'Prata', 2019, 103030, 10, '11743916000'),
('PRF5E55', 'CHASSI555ABCDEF', 'Azul', 2020, 102020, 20, '21242027076'),
('OBA6F66', 'CHASSI666ABCDEF', 'Preto', 2018, 104040, 10, '81476193088'),
('PAZ7G77', 'CHASSI777ABCDEF', 'Cinza', 2023, 101010, 10, '63126483038'),
('QWE8H88', 'CHASSI888ABCDEF', 'Branco', 2024, 105050, 10, '41311164057'),
('RTY9I99', 'CHASSI999ABCDEF', 'Verde', 2015, 106060, 30, '74117219057'),
('POU0J00', 'CHASSI000ABCDEF', 'Prata', 2022, 103030, 10, '50807659096');

-- ----------------------------
-- Tabela `Infracao`
-- ----------------------------
INSERT INTO `Infracao`
(`data`, `hora`, `velocidadeAferida`, `idLocal`, `idTipoInfra`, `placa`, `matricula`) VALUES
('2025-10-10', '08:30:15', 72, 1, 1, 'JKE1A11', 9001),
('2025-10-11', '14:45:00', 105, 2, 2, 'BRA2B22', 9002),
('2025-10-12', '18:00:05', NULL, 3, 3, 'HGT3C33', 9001),
('2025-10-13', '10:15:00', NULL, 4, 4, 'DFE4D44', 9003),
('2025-10-14', '09:05:20', NULL, 1, 5, 'PRF5E55', 9002),
('2025-10-15', '17:20:00', NULL, 2, 6, 'OBA6F66', 9001),
('2025-10-16', '11:00:30', 95, 5, 2, 'PAZ7G77', 9003),
('2025-10-17', '12:10:00', 88, 5, 1, 'PAZ7G77', 9003),
('2025-10-18', '22:30:00', NULL, 4, 3, 'QWE8H88', 9001),
('2025-10-19', '06:15:00', 75, 3, 2, 'RTY9I99', 9002),
('2025-10-20', '15:00:00', NULL, 1, 5, 'POU0J00', 9003),
('2025-10-21', '16:00:00', NULL, 4, 4, 'JKE1A11', 9001),
('2025-10-22', '07:40:10', 65, 4, 2, 'DFE4D44', 9002);

COMMIT;

