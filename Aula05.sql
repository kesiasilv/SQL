use bancotimes;
show tables;

describe times;

select * from times;
select * from jogadores;

select * from times
where anodefundacao > '1900';

select * from times
where anodefundacao between '1900' and '1920';

-- Tabela de jogadores -Sricpt
-- Autor: Kesia
-- Data: 03/09/2024

describe jogadores;
select nome, salario from jogadores
where salario > 3000 or salario < 2000;

select nome, salario from jogadores
where nome = 'jorge';

select * from jogadores
order by nome desc;

select count(*) as total from jogadores;

select max(salario) from jogadores;

select min(salario) from jogadores;

select avg(salario) as media_salarial from jogadores;

select sum(salario) as folha_de_pagamento from jogadores;

select nome, anodefundacao from times
order by nome;

select avg(valor) as valor_medio from times;

-- Questao 03 --
select nome, salario, datanascimento from jogadores
order by datanascimento asc;

-- Questao 04 --
select nome, salario from jogadores
where salario > '2000';

-- Questao 05 --
select sum(valor) as total from times;

-- Questao 06 --
select nome from jogadores
order by nome desc;

-- Questao 07 --
select nome, min(valor) from times
group by nome limit 1;

-- Questao 08 --
select nome, datanascimento from jogadores
where year (datanascimento) > '2000';

-- Questao 09 --
select count(nome) from jogadores
where salario < '3000';

-- Questao 10 --
select max(valor) from times;





-- 1) selção de um banco de servidor
use database;

-- 2) exibir as tabelas do banco
show tables;

-- 3) detalhes de uma tabela
describe tables;

-- 4) qual o significado do termo unsigne
-- o campo nao aceita valores negativos

-- 5) significado do termo key? pri:
-- chave respectivo em primaira ou estrangeira

-- 6) qual o objetivo do comando select?
-- exibir resultados de pesquisa em uma tabela

-- 7) porque devemos evitar o * (asteristico) em uma tabela?
-- devemos evitar para nao comprometer a performace do banco

-- 8) oque significa WHERE?
-- é um condicionante que ultilizamos para filtrar uma pesquisa. sim, é similiar a o comando if de linguagem de programaçao de alto nivel

-- 9) Between?
--  para restringir intervalo de busca

-- 10) quais operadores podemos ultilizar no where?
-- varios < > = != or, and ..

-- 11) objetivo do order by?
-- ordenar a pesquisa de forma crescente ou decrescente

-- 12) count = conta o numero de linhas
-- 13) sum = soma os valores do atributo passado como parametro
-- 14) Max = seleciona o maior valor do atributo passado como parametro
-- 15) min = seleciona o menor valor do atributo passado como parametro
-- 16) avg = faz a media dos valores de um campo
-- 17) distinct = evita duplicatas em um campo
