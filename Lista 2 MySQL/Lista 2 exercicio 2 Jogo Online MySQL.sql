create database db_generation_game_online;
-- Selecionar jogo
use db_generation_game_online;
-- Criar tabela

create table tb_classes (
id bigint auto_increment,
nome varchar (255),
poder varchar (255),
energia int (100),
primary key (id)
);

insert into tb_classes (nome, poder,energia)
values ("Lycan", "Ira do lobo", 95);
insert into tb_classes (nome, poder,energia)
values ("Vampire", "Fúria Scarlate", 95);
insert into tb_classes (nome, poder,energia)
values ("Spectre", "Shadow Claw", 95);



select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar (20),
genero varchar (20),
raça varchar (20),
ataque int,
defesa int,
fk_id_classes bigint,
primary key (id),
foreign key (fk_id_classes) references tb_classes (id)
);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("Gabriel", "ele", "Vampire", 2200, 20,1);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("Luis", "ele", "Lycan", 1950, 22,2);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("Edgar", "ele", "Spectre", 2100, 21,3);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("Evelyn", "ela", "Vampire", 1880, 17,4);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("Gabbys", "ela", "Spectre", 1790, 16,5);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("David", "ele", "Spectre", 1550, 18,6);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("Tiago", "ele", "Lycan",1205, 15,7);
insert into tb_personagens (nome, genero,raça, ataque,defesa,fk_id_classes)
values ("Cloud", "ela", "Vampire", 2500, 19,8);
select * from tb_personagens;

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.fk_id_classes;


select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.fk_id_classes 
where fk_id_classes = 1