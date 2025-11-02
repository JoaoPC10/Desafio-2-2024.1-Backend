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
CREATE SCHEMA IF NOT EXISTS `db_transito` DEFAULT CHARACTER SET utf8mb4 ;
USE `db_transito` ;

-- -----------------------------------------------------
-- Tabela `modelo`
-- -----------------------------------------------------
CREATE TABLE  `modelo` (
  `modelo` INT NOT NULL, 
  `nomeModelo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`modelo`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `categoria` (
  `categoria` INT NOT NULL,
  `nomeCategoria` VARCHAR(100) NULL,
  PRIMARY KEY (`categoria`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela `telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telefone` (
  `idTelefone` INT NOT NULL AUTO_INCREMENT,
  `telefone` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idTelefone`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `Proprietario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proprietario` (
  `cpf` CHAR(11) NOT NULL,
  `nome` VARCHAR(200) NOT NULL,
  `idade` INT NULL,
  `dataNascimento` DATE NULL,
  `sexo` CHAR(1) NULL,
  `endereco` VARCHAR(255) NULL,
  `estado` CHAR(2) NULL,
  `cidade` VARCHAR(100) NULL,
  `bairro` VARCHAR(100) NULL,
  `idTelefone` INT NOT NULL,
  PRIMARY KEY (`cpf`),
  CONSTRAINT `fk_proprietario_telefone` 
	FOREIGN KEY (`idTelefone`) 
	REFERENCES `telefone` (`idTelefone`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `local` (
  `idLocal` INT NOT NULL AUTO_INCREMENT,
  `latitude` DECIMAL(9, 6) NULL, 
  `longitude` DECIMAL(9, 6) NULL, 
  `velocidadePermitida` INT NULL,
  PRIMARY KEY (`idLocal`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `Agente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Agente` (
  `matricula` INT NOT NULL,
  `nome` VARCHAR(200) NOT NULL,
  `dataContratacao` DATE NULL,
  `tempoServico` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `Tipos_Infracao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Tipos_Infracao` (
  `idTipoInfra` INT NOT NULL AUTO_INCREMENT,
  `tipoInfra` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(10, 2) NULL,
  PRIMARY KEY (`idTipoInfra`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `Veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Veiculo` (
  `placa` CHAR(7) NOT NULL,
  `chassi` VARCHAR(17) NOT NULL,
  `corPredominante` VARCHAR(50) NULL,
  `anoFabricacao` INT NULL,
  `modelo` INT NOT NULL, 
  `categoria` INT NOT NULL, 
  `cpf` CHAR(11) NOT NULL, 
  PRIMARY KEY (`placa`),
  CONSTRAINT `fk_veiculo_modelo`
    FOREIGN KEY (`modelo`)
    REFERENCES `modelo` (`modelo`),
  CONSTRAINT `fk_veiculo_categoria`
    FOREIGN KEY (`categoria`)
    REFERENCES `categoria` (`categoria`),
  CONSTRAINT `fk_veiculo_proprietario`
    FOREIGN KEY (`cpf`)
    REFERENCES `Proprietario` (`cpf`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `Infracao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Infracao` (
  `idInfracao` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NULL,
  `hora` TIME NULL,
  `velocidadeAferida` INT NULL,
  `idLocal` INT NULL, 
  `idTipoInfra` INT NOT NULL, 
  `placa` CHAR(7) NOT NULL, 
  `matricula` INT NOT NULL, 
  PRIMARY KEY (`idInfracao`),
  CONSTRAINT `fk_infracao_local`
    FOREIGN KEY (`idLocal`)
    REFERENCES `local` (`idLocal`),
  CONSTRAINT `fk_infracao_tipo`
    FOREIGN KEY (`idTipoInfra`)
    REFERENCES `Tipos_Infracao` (`idTipoInfra`),
  CONSTRAINT `fk_infracao_veiculo`
    FOREIGN KEY (`placa`)
    REFERENCES `Veiculo` (`placa`),
  CONSTRAINT `fk_infracao_agente`
    FOREIGN KEY (`matricula`)
    REFERENCES `Agente` (`matricula`)
) ENGINE = InnoDB;
