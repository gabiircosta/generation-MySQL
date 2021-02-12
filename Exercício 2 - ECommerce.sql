-- Criando a Database
CREATE DATABASE MySQL_Exercicio2Ecommerce;

-- Criando a Table
CREATE TABLE MySQL_Exercicio2Ecommerce.tb_produtos (id mediumint auto_increment NOT NULL, 
departamento VARCHAR(45) NOT NULL,
descricao_basica VARCHAR(45) NOT NULL,
descricao VARCHAR(45) NOT NULL,
cor VARCHAR (45) NOT NULL,
preco DOUBLE, 
PRIMARY KEY (id));

-- Inserindo Produtos
INSERT INTO MySQL_Exercicio2Ecommerce.tb_produtos (departamento, descricao_basica, descricao, cor, preco)
VALUES
("Telefonia", "iPhone 12 Pro","iPhone 12 Pro - 256GB","Branco","9500"),
("Telefonia", "iPhone 10 MAX","iPhone 10 MAX - 159GB","Preto","5600"),
("Tecnologia", "Pendrive","Pendrive 8GB","Preto","39.90"),
("Tecnologia", "Pendrive","Pendrive 16GB","Preto","69.90"),
("Tecnologia", "Notebook Apple","iMac Apple 1T","Spacial Gray","13900"),
("Tecnologia", "Notebook Apple","iMac Apple 2T","Spacial Gray","23900"),
("Tecnologia", "Mouse Apple","Mouse Wifi Apple","Branco","439.90"),
("Tecnologia", "Mousepad","Mousepad Apple","Branco","139.90");

-- MOSTRAR A TABELA
SELECT *FROM MySQL_Exercicio2Ecommerce.tb_produtos;

-- MAIOR QUE 500
SELECT *FROM MySQL_Exercicio2Ecommerce.tb_produtos WHERE preco > 500;

-- MENOR QUE 500
SELECT *FROM MySQL_Exercicio2Ecommerce.tb_produtos WHERE preco < 500;

-- LIBERANDO PARA FAZER O UPDATE
SET SQL_SAFE_UPDATES = 0;

-- FAZENDO O UPDATE
UPDATE MySQL_Exercicio2Ecommerce.tb_produtos SET preco = 159.90 WHERE descricao_basica = 'Mousepad';

-- MOSTRAR A TABELA APÓS ATUALIZACAO
SELECT *FROM MySQL_Exercicio2Ecommerce.tb_produtos;