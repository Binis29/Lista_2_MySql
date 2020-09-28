/*/Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
/*O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga exatamente esse passo a passo:*/


/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_produto (
    id_produto		INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_curso		VARCHAR(100),
    duracao_curso 	varchar(100),
    nome_professor 	VARCHAR(100),
    matricula_aluno INT,
    valor_curso 	DOUBLE(7 , 2 )
);

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.*/
CREATE TABLE tb_categoria (
    id_categoria 		INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    area_conhecimento 	VARCHAR(200),
    turno 				ENUM('matutino', 'vespertino', 'noturno'),
    inicio 				date,
    constraint fk_cat_prod foreign key (id_categoria) references tb_produto(id_produto)    
);


#Popule esta tabela Produto com até 8 dados.
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('cálulo 1', '30 dias', 'marcelo', 211, 800); 
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('estática', '2 meses', 'mônica', 362, 1200); 
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('pré-história', '3 mesess', 'ruan', 963, 1400); 
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('programação', '3 meses', 'carlos', 956, 3000); 
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('inglês', '6 meses', 'debora', 654, 4000); 
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('artesanato', '30 dias', 'ricardo', 352, 450); 
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('miçangas 1', '10 dias', 'marcus', 123, 450); 
insert into tb_produto (nome_curso, duracao_curso, nome_professor, matricula_aluno, valor_curso) values ('transferência de calor', '25 dias', 'leilton', 251, 1000); 

#Popule esta tabela Categoria com até 5 dados.

insert into tb_categoria (area_conhecimento, turno, inicio) values ('matemática', 'noturno', '2021-01-01');
insert into tb_categoria (area_conhecimento, turno, inicio) values ('física', 'matutino', '2021-01-25');
insert into tb_categoria (area_conhecimento, turno, inicio) values ('história', 'vespertino', '2021-01-18');
insert into tb_categoria (area_conhecimento, turno, inicio) values ('informática', 'noturno', '2021-01-10');
insert into tb_categoria (area_conhecimento, turno, inicio) values ('línguas', 'noturno', '2021-01-10');

select * from tb_produto;
#Faça um select que retorne os Produtos com o valor maior do que 50(1000) reais.

select * from tb_produto where valor_curso>500;

#Faça um select trazendo os Produtos com valor entre 3 (500) e 60 (1000) reais.

select * from tb_produto where valor_curso>500 and valor_curso<1000;


#Faça um select utilizando LIKE buscando os Produtos com a letra J.

select * from tb_produto where nome_curso like 'j%';

#Faça um um select com Inner join entre tabela categoria e produto.

select * from tb_categoria inner join tb_produto on id_categoria = id_produto;


#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
#os produtos que são da categoria Java).

select * from tb_categoria inner join tb_produto on id_categoria = id_produto where turno = 'noturno';

/*salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/