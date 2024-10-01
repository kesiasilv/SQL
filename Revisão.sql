use cadastro;
-- mostra todas as tabelas --
show tables;
-- mostra a estrutura da tabela gafanhoto --
describe gafanhotos;

-- seleciona todos os registros da tabela gafanhotos --
select * from gafanhotos;

------------ ALTER TABLE -------------
-- atera a tabela gafanhoto adicionando uma nova coluna na primeira fila --
alter table gafanhotos 
add column tipo varchar(100) first;

-- insere valor na columa determinada (tipo) tambem determinando a localizacao (id_pessoa = '1') 
update gafanhotos 
set tipo = 'usuario' where id_pessoa = '6';

-- altera a tabela modificano a estrutura de determinada columa --
alter table gafanhotos 
modify column tipo varchar(25);

-- alterando o nome da tabela inteira --
alter table gafanhotos 
rename to pes;
-- voltando comm o nome original --
alter table pes 
rename to gafanhotos;

-- apagando a columma 'tipo' da tabela gafanhotos --
alter table gafanhotos
drop column tipo;

-- alterando a tabela para adicionar chave primaria ---
alter table cursos
add primary key (idcurso);

----------- UPDATE -------------------
-- atualizando tres valores da tabela cursos para esses novos determinados onde o idcurso  é igual a 4 e 
-- deixando um limite de apenas um registro para nao correr risco de alterar mias de um registro
update cursos 
set nome = 'java', ano = '2015', carga = '40' 
where idcurso = '4'
limit 1;

-- apaga apenas uma linha/registro da tabela de acordo -- 
delete from gafanhotos
where id_pessoa = '61';

--------- SELECT -----------------------
-- selecionando os registros em ordem de nome decrescente --
select * from gafanhotos
order by nome desc;

-- selecionando todas as mulheres da tabela gafanhotos e ordenando por nome -- 
select * from gafanhotos 
where sexo = 'F'
order by nome;

-- seleciona apenas o nome a descricao e o ano da tabela cursos onde o ano seja menor ou igual a 2018 ordenando por nome --
select nome, descrição, ano from cursos
where ano <= '2018'
order by nome;
--------------------------------------------------------
-- selecionando apenas o nome e o ano da tabela curso que  esteja entre 2014 e 2018 
select nome, ano from cursos
where ano BETWEEN '2014' and '2018';

-- seleciona apenas o nome e o ano da tabela cursos que é do ano de 2014, 2016 e 2018 ordenando por ano --
select nome, ano from cursos
where ano IN ('2014', '2016', '2018')
order by ano;  

-- seleciona o nome e o ano da tabela curso que tem a carga maior que 35 e o total de aulas menor que 30 ordernando por nome --
select nome, ano from cursos 
where carga > 35 AND totalaulas < 30
order by nome;

-- seleciona nome carga e totalaulas que a carga seja maior que 35 ou o total aulas  menor que 30 --
select nome, carga, totalaulas from cursos
where carga > 35 OR totalaulas < 30;

-- seleciona apenas os nomes da tabela cursos que inicia com a letra p --
select nome from cursos
where nome LIKE 'p%';

-- seleciona apenas os nomes da tabela cursos que termina com a letra p --
select nome from cursos
where nome like '%p';

-- seleciona apenas os nomes da tabela cursos que contem a letra p independente do lugar --
select nome from cursos
where nome like '%p%';

-- seleciona apenas os nomes da tabela cursos que nao contem a letra a em nenhum lugar --
select nome from cursos
where nome not like '%a%';

-- seleciona apenas os nomes da tabela cursos que inicia com a letra ph e termina com a letra p --
select nome from cursos
where nome like 'ph%p';

-- seleciona apenas os nomes da tabela cursos que inicia com a letra ph e termina com a letra p e ainda obriga ter alguma 
-- coisa ou nada no fim pois o % final signifa isso por exemplo php5.. --
select nome from cursos
where nome like 'ph%p%';

-- mesma coisa do anterior a diferenca de porcentagem % underline _ é que o: (_) obriga ter alguuma coisa diferente de zero, 
-- ja o (%) poder ter nada (zero) ou aalguma coisa.. --
select nome from cursos 
where nome like 'ph%p_';

-- ----- DISTINGUINDO ------------
-- os distinct ira tirar os repetidos e a lista ficará somente com valores/registros diferentes.
select distinct carga, nome from cursos;

-- funcoes de AGREGACAO --
-- conta quantos registros de cursos ha na tabela cursos --
select count(*) from cursos;

-- conta quantos registros á sendo a carga menor que 40
select count(*) from cursos
where carga < 40;

-- conta quantos nomes ha na tabela curso
select count(nome) from cursos;

-- seleciona a maior carga entre os cursos
select max(carga) from cursos;

-- seleciona dos cursos de 2016 o maior totalaulas, ou seja aquele que tem maior totalaulas de 2016
select max(totalaulas) from cursos
where ano = 2016;

-- seleciona o menor o (minimo) de totalaulas de 2016
select min(totalaulas) from cursos
where ano = 2016;

-- o mesmo do anterior porem apresente o curso tambem
select nome, min(totalaulas) from curso
where ano = 2016;

-- some o total dos cursos de 2016
select sum(totalaulas) from cursos
where ano = 2016;

-- calule a media do totalaulas de 2016
select avg(totalaulas) from cursos
where ano = 2016;




