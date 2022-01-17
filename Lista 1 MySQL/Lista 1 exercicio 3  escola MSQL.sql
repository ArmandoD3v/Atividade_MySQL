create database db_escola;

use db_escola;

create table tb_registro (
id bigint auto_increment unique,
nome varchar (255) not null,
idade int(255),
nota decimal(2,1),
serie varchar(255)not null ,
genero varchar(255) not null,
primary key (id)
);

insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Rafael", 13, 8.2, "6 serie", "H");
insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Leticia", 12, 4.7, "6 serie","M");
insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Carlos", 14, 7.2,"3 serie", "H");
insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Maria", 15, 9.5,"5 serie", "M");
insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Paulo", 11, 8.0, "4 serie","H");
insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Fernanda", 12, 5.9,"3 serie", "H");
insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Lucas", 10, 10.0,"1 serie","H");
insert into tb_registro (nome, idade, nota, serie,genero) 
values ("Carol", 12, 4.9,"3 serie", "H");

alter table tb_registro modify nota decimal (4.1);

select * from tb_registro;

select * from tb_registro where nota >7;

select * from tb_registro where nota <7;

update tb_registro set nota = 10 where id = 6;
