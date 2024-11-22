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

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
Ao término atualize um registro desta tabela através de uma query de atualização.
*/
