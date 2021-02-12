-- Criando a Database
CREATE DATABASE MySQL_Exercicio1RH;

-- Criando a Table
CREATE TABLE MySQL_Exercicio1RH.tb_funcionarios (id mediumint auto_increment NOT NULL, 
nome VARCHAR(45) NOT NULL,
data_admissao DATE,
departamento VARCHAR(45) NOT NULL,
cargo VARCHAR(45) NOT NULL,
salario DOUBLE, 
PRIMARY KEY (id));

-- Inserindo Funcionários
INSERT INTO MySQL_Exercicio1RH.tb_funcionarios (nome, data_admissao, departamento, cargo, salario)
VALUES
("Gabriela Rodrigues", "2021-02-12","TI","Engenheira de Software","1800"),
("Matheus Rodrigues", "2021-02-12","TI","Arquiteto de Software","1500"),
("Natacha Daniele", "2021-02-12","TI","Engenheira de Software","10000"),
("Lucas Rodrigues", "2021-02-12","TI","Desenvolvedor Web","11000"),
("Ione Rodrigues", "2021-02-12","TI","Desenvolvedora Front-End","12000");

-- MOSTRAR A TABELA
SELECT *FROM MySQL_Exercicio1RH.tb_funcionarios;

-- MAIOR QUE 2K
SELECT *FROM MySQL_Exercicio1RH.tb_funcionarios WHERE salario > 2000;

-- MENOR QUE 2K
SELECT *FROM MySQL_Exercicio1RH.tb_funcionarios WHERE salario < 2000;

-- LIBERANDO PARA FAZER O UPDATE
SET SQL_SAFE_UPDATES = 0;

-- FAZENDO O UPDATE
UPDATE MySQL_Exercicio1RH.tb_funcionarios SET salario = 10000 WHERE nome = 'Gabriela Rodrigues';

-- MOSTRAR A TABELA APÓS ATUALIZACAO
SELECT *FROM MySQL_Exercicio1RH.tb_funcionarios;