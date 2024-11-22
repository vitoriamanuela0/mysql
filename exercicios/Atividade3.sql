CREATE DATABASE db_registroalunos;

USE db_registroalunos;

CREATE TABLE tb_registroalunos (

Matricula INT AUTO_INCREMENT UNIQUE NOT NULL,
Nome VARCHAR (255) NOT NULL,
Data_Nascimento DATE NOT NULL,
Turma VARCHAR (100) NOT NULL,
Nota_Final DECIMAL (6, 2) NOT NULL,
PRIMARY KEY (Matricula)
);

INSERT INTO tb_registroalunos (Nome, Data_Nascimento, Turma, Nota_Final)
VALUES 
("Vitória Manuela", "2003-11-10", "1A2024", 10.00),
("Manuela Vitória", "2003-10-11", "2C2024", 9.99),
("Rhayssa Monty", "2001-04-18", "1A2024", 6.70),
("Vinícius Moraes", "2009-01-10", "3B2024", 5.50),
("Reinaldo Silva", "2002-08-30", "1A2024", 9.70),
("Larissa Soares", "2000-11-26", "3B2024", 3.50),
("Daniela Faustino", "2005-02-05", "2B2024", 8.60),
("Thamires Monteiro", "2007-07-09", "1B2024", 6.90);

SELECT * FROM tb_registroalunos;

SELECT * FROM tb_registroalunos
WHERE Nota_Final > 7.00;

SELECT * FROM tb_registroalunos
WHERE Nota_Final < 7.00;






-----------------------------------------------------------------------------------------------------------------------------------------

/*                                                |    DESCRIÇÃO ATIVIDADE 1     |

Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre 
Banco de dados.
*/