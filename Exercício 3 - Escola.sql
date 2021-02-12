-- Criando a Database
CREATE DATABASE MySQL_Exercicio3Escola;

-- Criando a Table
CREATE TABLE MySQL_Exercicio3Escola.tb_alunos (id mediumint auto_increment NOT NULL, 
nome VARCHAR(45) NOT NULL,
curso VARCHAR(45) NOT NULL,
descricao_curso VARCHAR(45) NOT NULL,
carga_horaria INT NOT NULL,
nota_final DOUBLE, 
PRIMARY KEY (id));

-- Inserindo Produtos
INSERT INTO MySQL_Exercicio3Escola.tb_alunos (nome, curso, descricao_curso, carga_horaria, nota_final)
VALUES
("Arthur Costa", "Java","Java com Eclipse ","45","10"),
("Aurora Rodrigues", "Java","Java com Eclipse ","45","9"),
("Matheus Costa", "Edições de Vídeo","Edições de Vídeo com Finalcut ","80","10"),
("Nina Rodrigues", "Edições de Vídeo","Edições de Vídeo com Finalcut ","80","8"),
("Ione Costa", "Teclado","Teclado com Bona","60","7"),
("Josenildo Rodrigues", "Teclado","Teclado com Bona","60","6"),
("Téo Costa", "Python","Programando com Python","80","6"),
("Anita Rodrigues", "Python","Programando com Python","80","5");

-- MOSTRAR A TABELA
SELECT *FROM MySQL_Exercicio3Escola.tb_alunos;

-- MAIOR QUE 7
SELECT *FROM MySQL_Exercicio3Escola.tb_alunos WHERE nota_final > 7;

-- MENOR QUE 7
SELECT *FROM MySQL_Exercicio3Escola.tb_alunos WHERE nota_final < 7;

-- LIBERANDO PARA FAZER O UPDATE
SET SQL_SAFE_UPDATES = 0;

-- FAZENDO O UPDATE
UPDATE MySQL_Exercicio3Escola.tb_alunos SET nota_final = 10 WHERE nome = 'Aurora Rodrigues';

-- MOSTRAR A TABELA APÓS ATUALIZACAO
SELECT *FROM MySQL_Exercicio3Escola.tb_alunos ;