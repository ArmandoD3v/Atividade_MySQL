CREATE DATABASE db_ecomerce;

USE  db_ecomerce;

CREATE TABLE tb_produtos (

id BIGINT AUTO_INCREMENT UNIQUE,
nome VARCHAR(260) NOT NULL,
cor VARCHAR(260) NOT NULL,
preco DECIMAL(8,2),
quantidade INT,
descricao VARCHAR (260) NOT NULL,
PRIMARY KEY (id)
);

insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("Mouse Razer", Preto, 300.00, "20", "8000 de dpi");
insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("Cooler", RGB, 34.00, "15", "Coller de PC");
insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("Microfone Fifine k669", Preto, 340.00, "23", "Gravação de audio profissional");
insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("Teclado HyperX", Preto, 480.00, "25", "Teclado mecanico");
insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("MousePad Pichau", Preto, 40.00, "5", "Mouse 90 x 120 cm");
insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("Placa de video AMD RX 580", Preto, 680.00, "20", "Placa de video para pc");
insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("Processador Ryzen 5 3500x", unica, 500.00, "19", "Processador para pc");
insert into tb_produtos (nome, cor, preco, quantidade, descricao) values ("Monitor LG 21 full hd ", Preto, 300.00, "12", "Monitor full hd 21 polegadas");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >300;

SELECT * FROM tb_produtos WHERE preco <300;

UPDATE tb_produtos SET quantidade = 10 WHERE id = 6;