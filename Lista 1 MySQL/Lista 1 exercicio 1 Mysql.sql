CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id BIGINT(5) AUTO_INCREMENT,
	nome VARCHAR (30) NOT NULL,
	idade INT (2) NOT NULL,
	salario DECIMAL (10,2),
	filhos INT (2),
	PRIMARY KEY (id)

);

INSERT INTO tb_funcionarios(nome, idade, salario, filhos) VALUES ("Roberto", 22, 2800, 1);
INSERT INTO tb_funcionarios(nome, idade, salario, filhos) VALUES ("Lucas", 21, 1050, 2);
INSERT INTO tb_funcionarios(nome, idade, salario, filhos) VALUES ("Rafael", 23, 1000, 0);
INSERT INTO tb_funcionarios(nome, idade, salario, filhos) VALUES ("Paulo", 25, 3850, 3);
INSERT INTO tb_funcionarios(nome, idade, salario, filhos) VALUES ("Tiago", 27, 1200, 1);


SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario < 2000;
SELECT * FROM tb_funcionarios WHERE salario > 2000;

UPDATE tb_funcionarios SET salario = 5000
	WHERE id = 3;
    
SELECT * FROM tb_funcionarios;