/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
cracha decimal(8) not null,
cargo varchar(255) not null,
salario decimal(8,2) not null,
primary key(id)
);

insert into tb_funcionarios (nome, idade, cracha, cargo, salario) values ("Lilian", 35, 202212, "Supervisora de RH", 7500.00);
insert into tb_funcionarios (nome, idade, cracha, cargo, salario) values ("Leticia", 47, 202209, "Coordenadora de RH", 15000.00);
insert into tb_funcionarios (nome, idade, cracha, cargo, salario) values ("Katia", 19, 202245, "Estagiaria de RH", 1599.99);
insert into tb_funcionarios (nome, idade, cracha, cargo, salario) values ("Claudia", 24, 202225, "Assistente de RH", 4399.98);
insert into tb_funcionarios (nome, idade, cracha, cargo, salario) values ("Rose", 29, 202237, "Assitente de RH", 4299.90);

select*from tb_funcionarios;

select nome from tb_funcionarios where salario > 2000.00;
select nome, salario from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 4399.98 where id = 5;
