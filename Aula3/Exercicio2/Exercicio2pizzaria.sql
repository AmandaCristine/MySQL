create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
tipoPizza varchar(255) not null,
qtdPedacos int not null,
primary key (id)
);

insert into tb_categoria (tamanho, tipoPizza, qtdPedacos) values ("Grande", "tradicional", 10);
insert into tb_categoria (tamanho, tipoPizza, qtdPedacos) values ("Média", "Vegetariana", 6);
insert into tb_categoria (tamanho, tipoPizza, qtdPedacos) values ("Pequena", "Vegana", 4);
insert into tb_categoria (tamanho, tipoPizza, qtdPedacos) values ("Média", "Doce", 6);
insert into tb_categoria (tamanho, tipoPizza, qtdPedacos) values ("Grande", "Vegetaria", 8);

select*from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
massa varchar(255) not null,
borda varchar(255) not null,
preco decimal (8,2) not null,
entrega varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("Chocolate", "Fina", "Sem recheio", 28.00, "Retirar", 4);
insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("Rucula", "Tradicional", "Sem recheio", 26.00, "Entragar", 3);
insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("Palmito com queijo", "Grossa", "Catupiry", 32.00, "Comer no local", 2);
insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("2 Queijos", "Grossa", "Cheddar", 43.00, "Entregar", 5);
insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("Atum com catupiry", "Tradicional", "Sem recheio", 47.99, "Retirar", 1);
insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("Romeu e Julieta", "Tradiconal", "Sem recheio", 35.00, "Comer no local", 4);
insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("Frango com milho", "Fina", "Cheddar", 46.00, "Entregar", 1);
insert into tb_pizza (sabor, massa, borda, preco, entrega, categoria_id) values ("Brocolis com queijo", "Grossa", "Sem recheio", 44.00, "Retirar", 5);

select*from tb_pizza;

select*from tb_pizza where preco > 45;

select*from tb_pizza where preco >= 29 and preco <= 60;

select*from tb_pizza where sabor like "%c%";

select*from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select*from tb_pizza where categoria_id = 4;