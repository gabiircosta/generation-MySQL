USE aula2ex1_jogo;

-- Inserindo dados na tabela classe
INSERT INTO tb_classe (nome_jogo, categoria, nivel_jogo)
VALUES
("Mario Kart","Corrida","Basic"),
("Mario","Aventura","Medium"),
("Mortal Kombat","Luta","Medium"),
("Guitar Hero","Musical","Hard"),
("GTA","Aventura","Hard");

-- visualizando a tabela classe
SELECT *FROM aula2ex1_jogo.tb_classe;

-- Inserindo dados na tabela personagem
INSERT INTO tb_personagem (nome, nivel_forca, nivel_agilidade, nivel_ataque, nivel_defesa, fkid_classe)
VALUES
("Sindy",5000.0,6000.0,7000.0,8000.0,3),
("Mario",700.0,500.0,700.0,1800.0,2),
("Luigi",800.0,600.0,500.0,1800.0,2),
("Snake",9000.0,6000.0,7000.0,8000.0,3),
("Sub-Zero",5000.0,6000.0,7000.0,8000.0,3),
("Mileena",4000.0,6000.0,5000.0,6000.0,3),
("Shang Tsung",5000.0,6000.0,5000.0,8000.0,3),
("Sonya Blade",900.0,600.0,500.0,1900.0,3);

-- visualizando a tabela classe
SELECT *FROM aula2ex1_jogo.tb_personagem;

-- NÍVEL DE ATAQUE MAIOR QUE 2000
SELECT *FROM aula2ex1_jogo.tb_personagem WHERE nivel_ataque > 2000;

-- NÍVEL DE DEFESA ENTRE 1000 E 2000 
SELECT *FROM aula2ex1_jogo.tb_personagem WHERE nivel_defesa BETWEEN 1000 AND 2000;

-- LIKE
SELECT *FROM tb_personagem 	WHERE nome LIKE "c%";

-- INNER JOIN
SELECT *
FROM tb_personagem
INNER JOIN tb_classe
ON tb_personagem.fkid_classe = tb_classe.id_classe;

-- SELEÇÃO DE UMA INFORMAÇÃO DENTRO DE CLASSE
SELECT *FROM tb_personagem 	WHERE fkid_classe = 2;
