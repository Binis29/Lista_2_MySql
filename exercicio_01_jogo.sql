#Crie um banco de dados para um serviço de um game Online , 
#o nome do banco deverá ter o seguinte nome db_generation_game_online, 
#onde, o sistema trabalhará com as informações dos personagens desse game. 

create database db_generation_game_online;

use db_generation_game_online;

#Crie uma tabela tb_classe utilizando a habilidade de abstração 
#e determine 3 atributos relevantes do Cargos para se trabalhar 
#com o serviço desse  game Online.

CREATE TABLE tb_classe (
	id_classe int not null primary key AUTO_INCREMENT,
    classificacao VARCHAR(40),
    atributo VARCHAR(40),
    forca int,
    CONSTRAINT fk_personagem FOREIGN KEY (id_classe) REFERENCES tb_personagem (id_personagem)
);

#Crie uma tabela tb_personagem  e utilizando a habilidade 
#de abstração e determine 5 atributos relevantes dos personagens 
#para se trabalhar com o serviço desse game Online 
#(não esqueça de criar a foreign key de tb_classe nesta tabela).

CREATE TABLE tb_personagem (
    id_personagem int not null primary key AUTO_INCREMENT,
    nome VARCHAR(40),
    nivel SMALLINT,
    poder_de_ataque INT,
    poder_de_defesa INT,
    saude SMALLINT
);

#Popule esta tabela classe com até 5 dados.

insert into tb_classe (classificacao, atributo, forca) values ('mago','sabedoria', 5000);
insert into tb_classe (classificacao, atributo, forca) values ('guerreiro','força', 2000);
insert into tb_classe (classificacao, atributo, forca) values ('ladrão','agilidade', 3500);
insert into tb_classe (classificacao, atributo, forca) values ('feiticeira','sabedoria', 3000);
insert into tb_classe (classificacao, atributo, forca) values ('aldeão','destreza', 1000);

select * from tb_classe;

#Popule esta tabela personagem com até 8 dados.

insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Maragot',25, 3000, 6000, 100);
insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Valderrof',15, 1500,800,100);
insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Urach',18, 2000, 1700,80);
insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Kassandra',22, 4000, 3000, 100);
insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Barkof',12, 1000, 500, 100);
insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Renét',12, 900, 500, 100);
insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Jaffar',12, 1200, 750, 100);
insert into tb_personagem (nome, nivel, poder_de_ataque, poder_de_defesa, saude) values ('Cristoff',13, 950, 1800, 100);


#Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

select nome from tb_personagem where poder_de_ataque > 2000;

#Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.

select nome from tb_personagem where poder_de_defesa > 1000 and poder_de_defesa <2000;

#Faça um select  utilizando LIKE buscando os personagens com a letra C.

select * from tb_personagem where nome like ('c%');

#seleciona tudo que vem da tabela personagem e junta (inner join) com a tabela classe, nas quais(on) o id_personagem é o mesmo que id_cargo
select * from tb_classe INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.id_personagem ;

drop table tb_personagem;

drop table tb_classe;

truncate tb_classe;
truncate tb_personagem; 

