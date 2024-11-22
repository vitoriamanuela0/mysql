CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce (

Id BIGINT AUTO_INCREMENT UNIQUE NOT NULL,
Nome VARCHAR (255) UNIQUE NOT NULL,
Quantidade INT NOT NULL,
Preco DECIMAL (10, 2) NOT NULL,
CATEGORIA VARCHAR (35) NOT NULL
);

INSERT INTO tb_ecommerce (Nome, Quantidade, Preco, Categoria)
VALUES 
("SMART TV SAMSUMG 49'", 156, 1559.90, "Eletrônico"),
("Liquidificador MONDIAL", 101, 89.90, "Eletrodoméstico"),
("Ventilador ARNO", 257, 249.90, "Eletrodoméstico"),
("Geladeira BRASTEMP", 156, 5009.90, "Eletrodoméstico"),
("Notebook DELL", 67, 3999.90, "Eletrônico"),
("Mesa 4 cadeiras MADESA", 107, 1498.90, "Móveis"),
("Sofá retratil reclinável 4 lugares ESSENCIAL ESTOFADOS", 156, 5998.90, "Móveis"),
("Fogão ESMALTEC", 139, 5899.90, "Eletrodoméstico");


SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce 
WHERE preco > 500.00;
SELECT * FROM tb_ecommerce 
WHERE preco < 500.00;