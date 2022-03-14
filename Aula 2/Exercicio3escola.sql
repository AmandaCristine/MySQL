/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes  com a nota maior do que 7.
Faça um select que retorne o/as estudantes  com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
nota decimal(4,2) not null,
numeroEstudante bigint not null,
serie varchar(255) not null,
sala int not null,
primary key(id)
);

insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Eric", 8.5, 1587, "8 C", 13);
insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Liz", 2.75, 1390, "8 A", 11);
insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Sam", 9.0, 1458, "8 C", 13);
insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Jhon", 1.25, 1272, "8 B", 12);
insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Liam", 5.5, 1673, "8 A", 11);
insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Bella", 8.25, 1234, "8 A", 11);
insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Nathan", 4.75, 1355, "8 B", 12);
insert into tb_estudantes (nome, nota, numeroEStudante, serie, sala) values ("Audrey", 10.0, 1523, "8 C", 13);

select*from tb_estudantes;

select nome, nota from tb_estudantes where nota > 07.00;
select nome, nota from tb_estudantes where nota < 07.00;

update tb_estudantes set nota = 7.25  where id = 6;
