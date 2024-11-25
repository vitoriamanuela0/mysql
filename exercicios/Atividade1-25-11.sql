CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,             
    poder_ataque INT NOT NULL,             
    poder_defesa INT NOT NULL,             
    id_classe INT,                         
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id) 
);

INSERT INTO tb_classes (nome, tipo) VALUES
('Guerreiro', 'Ofensiva'),
('Arqueiro', 'Ofensiva'),
('Mago', 'Mágica'),
('Paladino', 'Defensiva'),
('Assassino', 'Ofensiva');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES
('Ares', 2500, 1000, 1), 
('Legolas', 2000, 1500, 2), 
('Gandalf', 1000, 3000, 3), 
('Arthur', 1800, 2500, 4), 
('Eren', 3000, 500, 1), 
('Kassandra', 1800, 1000, 5), 
('Merlin', 1200, 2800, 3), 
('Lara', 1900, 1200, 2); 

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';


SELECT p.id, p.nome AS personagem_nome, p.poder_ataque, p.poder_defesa, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;

SELECT p.id, p.nome AS personagem_nome, p.poder_ataque, p.poder_defesa, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'Arqueiro';

SELECT * FROM tb_classes;