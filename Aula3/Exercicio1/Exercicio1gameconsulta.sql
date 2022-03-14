use db_generation_game_online;

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa >= 1000 and defesa <= 2000;
select * from tb_personagem where nome like "%c%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classes.id = 5;
