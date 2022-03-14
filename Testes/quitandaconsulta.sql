select*from tb_produtos;
use db_quitanda;

select*from tb_produtos where nome like "A%";

select count(id) from tb_produtos;

select sum(preco) as valorTotal from tb_produtos;

select nome as produto, preco as valor from tb_produtos;

select max(preco) from tb_produtos;

-- Tabela com todos os dados
/*select*from
tb_produtos left join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;*/

-- Tabela com 
select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos left join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos right join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

-- Tabela em ordem ascendente do menor para o maior.
select*from
tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id asc;

-- Tabela em ordem descendente do maior para o menor.
select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id desc;
