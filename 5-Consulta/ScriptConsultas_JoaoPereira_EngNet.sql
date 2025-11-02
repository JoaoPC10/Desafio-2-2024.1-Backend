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


------- Consulta A--------
SELECT * FROM Veiculo v
JOIN Proprietario p ON v.cpf = p.cpf
WHERE p.cpf = "21242027076"  

-----Consulta B ---------
SELECT * FROM Proprietario p
where p.nome LIKE "%Silva%"

------Consulta C ------
SELECT * FROM Infracao i
Join Veiculo v ON i.placa = v.placa
where i.data between '2025-10-17' and '2025-10-22'

------Consulta D -------
SELECT m.NomeModelo, COUNT(*) AS "NumeroDeVeiculos" FROM Veiculo v 
JOIN modelo m ON v.modelo = m.modelo 
GROUP BY m.modelo, m.NomeModelo
ORDER BY NumeroDeVeiculos DESC; 

