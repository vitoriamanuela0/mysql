CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores (
Matricula BIGINT AUTO_INCREMENT NOT NULL,
Nome VARCHAR (255) NOT NULL,
data_nascimento DATE NOT NULL,
Email VARCHAR (255) UNIQUE,
Cargo VARCHAR (255) NOT NULL,
Salario DECIMAL (10, 2) NOT NULL,
PRIMARY KEY (Matricula)
);

INSERT INTO tb_colaboradores (Nome, data_nascimento, Email, Cargo, Salario)
VALUES
("Vitória Manuela", "2003-11-10", "vitoriamanuela@gmail.com", "Desenvolvedora Junior", 3000.00),
("Dayanne Santos", "2000-02-13", "dayannesantos@gmail.com", "Assistente de Produção", 2500.00),
("Lucas Brito", "1995-04-20", "lucasbrito@gmail.com", "Assistente Administrativo", 1700.00),
("Ana Beatriz", "2004-02-17", "anabeatriz@gmail.com", "Assistente de Departamento", 2500.00),
("Sara Melo", "1988-09-25", "saramelos@gmail.com", "Auxiliar de Recepção", 1200.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores 
WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores 
WHERE salario < 2000.00;

-----------------------------------------------------------------------------------------------------------------------------------------

/*                                                |    DESCRIÇÃO ATIVIDADE 1     |

Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que 
deverão estar relacionadas.
*/
