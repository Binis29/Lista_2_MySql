/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.*/

create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

#O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

#siga exatamente esse passo a passo:

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos
(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/

create table tb_produto(
marca varchar(100),
produto varchar(100),
medida varchar (20),
preco double (7,2),
quantidade smallint,
id_produto int not null primary key auto_increment
);


/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.*/

create table tb_categoria(
id_categoria int not null primary key auto_increment,
categoria varchar(100),
quantidade_estoque int,
codigo_produto varchar(8),
constraint foreign key fk_cat_prod (id_categoria) references tb_produto (id_produto)

);



#Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (categoria, quantidade_estoque, codigo_produto) values ('acabamento', 10, '1456STFG');
insert into tb_categoria (categoria, quantidade_estoque, codigo_produto) values ('alvenaria', 6, '7895RTFG');
insert into tb_categoria (categoria, quantidade_estoque, codigo_produto) values ('limpeza', 100, '4789STUG');
insert into tb_categoria (categoria, quantidade_estoque, codigo_produto) values ('hidraulica', 500, '5823ASDF');
insert into tb_categoria (categoria, quantidade_estoque, codigo_produto) values ('estrutura', 8, '3210IOPD');

#Popule esta tabela Produto com até 8 dados.
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('axton', 'cimento', '50 kg', 25.00, 10);
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('leroy merlin', 'tijolo', '1 kg', 790.00, 1000);
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('qualitá', 'limpa vidros', '400 ml', 3.00, 2);
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('tigre', 'tubo pvc 25 mm', '6 m', 18.00, 3);
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('gerdau', 'barra de aço 10 mm', '12 m', 72, 3);
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('suvinil', 'tinta azul', '900 ml', 39.50, 1);
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('eternit', 'caixa d\'água', '500 l', 240, 1);
insert into tb_produto (marca, produto, medida, preco, quantidade) values ('komeco', 'aquecedor solar + boiler', '300 litros', 2700.0, 1);


#Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from tb_produto where preco>50;

#Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

select * from tb_produto where preco>3 and preco<60;

#Faça um select utilizando LIKE buscando os Produtos com a letra C.

select * from tb_produto where produto like 'c%';

#Faça um um select com Inner join entre tabela categoria e produto.

select * from tb_produto inner join tb_categoria  on id_categoria = id_produto;

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
#os produtos que são da categoria hidráulica).

select * from (tb_produto inner join tb_categoria  on id_categoria = id_produto) where categoria = 'limpeza';


/*salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/