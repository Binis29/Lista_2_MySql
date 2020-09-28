/*Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o
seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos
produtos desta empresa.*/

create database db_cidade_das_carnes;
use db_cidade_das_carnes;

/*O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:


/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/

create table tb_produto(
corte varchar(100),
peso double (5,2),
preco double(5,2),
data_compra date,
hora_compra time,
id_produto int not null primary key auto_increment
);

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.*/

create table tb_categoria (
id_categoria int not null primary key auto_increment,
animal enum ('suína', 'bovina', 'frango'),
tipo enum ('primeira', 'segunda', 'terceira'),
estado enum ('moída','picada','pedaço','bife'),
constraint fk_cat_pro foreign key (id_categoria) references tb_produto (id_produto)
);


#Popule esta tabela Produto com até 8 dados.
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('acém', 3.00, 52.00, '2020-09-28', '11:44:06');
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('lombo', 5.00, 100.00, '2020-09-25', '10:54:56');
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('peito', 2.00, 20.00, '2020-07-12', '09:12:00');
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('costela', 6.00, 60.00, '2020-06-15', '16:35:08');
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('chã de dentro', 3.00, 80.00, '2020-06-06', '17:00:03');
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('vitela', 3.00, 75.00, '2020-05-11', '08:15:15');
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('asinha', 3.00, 24.00, '2020-04-10', '09:30:36');
insert into tb_produto (corte, peso, preco, data_compra, hora_compra) values ('coxão mole', 1.50, 37.50, '2020-03-22', '09:14:15');

#Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (animal, tipo, estado) values ('bovina', 'segunda', 'moída');
insert into tb_categoria (animal, tipo, estado) values ('suina', 'primeira', 'pedaço');
insert into tb_categoria (animal, estado) values ('frango','pedaço');
insert into tb_categoria (animal, tipo, estado) values ('bovina', 'terceira', 'pedaço');
insert into tb_categoria (animal, tipo, estado) values ('bovina', 'primeira', 'bife');


#Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from tb_produto where preco >50;

#Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

select * from tb_produto where preco >3 and preco<60;

#Faça um select utilizando LIKE buscando os Produtos com a letra C.

select * from tb_produto where corte like 'c%';

#Faça um um select com Inner join entre tabela categoria e produto.

select * from tb_categoria inner join tb_produto on id_categoria=id_produto;

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
#os produtos que são cosméticos).

select * from tb_categoria inner join tb_produto on id_categoria=id_produto where animal = 'bovina';


/*salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

drop table tb_categoria;
drop table tb_produto;