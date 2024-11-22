CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores (
Matricula BIGINT AUTO_INCREMENT,
Nome VARCHAR (255),
data_nascimento DATE,
Email VARCHAR (255) UNIQUE,
Cargo VARCHAR (255),
Salario DECIMAL (10, 2),
PRIMARY KEY (Matricula)
);

INSERT INTO tb_colaboradores (Nome, data_nascimento, Email, Cargo, Salario)
VALUES
("Vitória Manuela", "2003-11-10", "vitoriamanuela@gmail.com", "Desevolvedora Junior", 3000.00),
("Dayanne Santos", "2000-02-13", "dayannesantos@gmail.com", "Assistente de Produção", 2500.00),
("Lucas Brito", "1995-04-20", "lucasbrito@gmail.com", "Assistente Administrativo", 1700.00),
("Ana Beatriz", "2004-02-17", "anabeatriz@gmail.com", "Assistente de Departamento", 2500.00),
("Sara Melo", "1988-09-25", "saramelos@gmail.com", "Auxiliar de Recepção", 1200.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores 
WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores 
WHERE salario < 2000.00;