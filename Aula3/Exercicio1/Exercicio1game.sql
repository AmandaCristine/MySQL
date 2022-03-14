/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game.
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
Faça um select utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica
(exemplo todos os personagens que são arqueiros).*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
arma varchar(255) not null,
habilidade varchar(255) not null,
primary key (id)
);

insert into tb_classe (nome, arma, habilidade) values ("Arqueiro", "Flechas", "Atirar flechas à longa distância");
insert into tb_classe (nome, arma, habilidade) values ("Feiticeiro", "Cajado", "Feitiços");
insert into tb_classe (nome, arma, habilidade) values ("Guerreiro", "Espada", "Lutar com duas espadas");
insert into tb_classe (nome, arma, habilidade) values ("Curandeiro", "Livro de cura", "Poções");
insert into tb_classe (nome, arma, habilidade) values ("Mago", "Varinha", "Teletransporte");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
ataque decimal(8,2) not null,
defesa decimal(8,2) not null,
nivel int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Lian", 1000, 900, 400, 3);
insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Merlin", 2000, 1300, 690, 5);
insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Ulisses", 500, 300, 110, 1);
insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Catrina", 2300, 3000, 780, 2);
insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Arth", 1200, 400, 230, 4);
insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Liv", 3000,3800, 900, 3);
insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Carl", 800, 900, 190, 5);
insert into tb_personagem (nome, ataque, defesa, nivel, classe_id) values ("Sam", 400, 560, 90, 2);

select*from tb_presonagem;
