/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_ecommerce;

use db_ecommerce;

create table tb_ecommerc(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2) not null,
quantidade bigint not null,
marca varchar(255) not null,
codigoproduto bigint not null,
primary key(id)
);

insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Conjunto saída maternidade menino", 529.99, 5, "ABCD", 2341);
insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Conjunto saída maternidade menina", 610.00, 3, "ABCD", 2587);
insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Kit 12 peças body e mijão tamanho RN", 89.99, 10, "Adoleta", 2943);
insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Kit 12 peças body e mijão tamanho P", 99.90, 15, "Adoleta", 2157);
insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Kit 12 peças body e mijão tamanho M", 109.98, 8, "Adoleta", 2468);
insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Kit 12 peças body e mijão tamanho G", 119.99, 13, "Adoleta", 2345);
insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Kit 5 tolhas fralda de banho amarela", 549.90, 3, "Fofinho", 1234);
insert into tb_ecommerc (nome, preco, quantidade, marca, codigoproduto) values ("Kit 5 tolhas fralda de banho vercde", 539.90, 3, "Fofinho", 5678);

select*from tb_ecommerc;

select nome, preco from tb_ecommerc where preco > 500.00;
select nome, preco from tb_ecommerc where preco < 500.00;

update tb_ecommerc set preco = 549.90 where id = 8;