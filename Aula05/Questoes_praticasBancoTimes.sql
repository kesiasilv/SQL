## QUESTOES PRATICAS
use bancotimes;
show tables;

describe times;

select * from times;
select * from jogadores;

-- selecionando todos os times onde o anodefundacao seja maior que 1900
select * from times
where anodefundacao > '1900';

-- selecionando todos os times onde o anodefundacao esteja entre 1900 e 1920
select * from times
where anodefundacao between '1900' and '1920';

-- selecionando  o nome e o salario da tabela jogadores onde o salario seja maior que 3000 ou menor que 200
select nome, salario from jogadores
where salario > 3000 or salario < 2000;

-- selecionando o jogador que possui nome jorge
select nome, salario from jogadores
where nome = 'jorge';

-- selecionando todos os jogadores por ordem de nome decrescente
select * from jogadores
order by nome desc;

-- quantos jogadores á no total?
select count(*) as total from jogadores; -- o as so apelida a funcao count para total na apresentacao da tabela

-- mostra o maior salario dos jogadores
select max(salario) from jogadores;

-- mostra o menor salario dos jogadores
select min(salario) from jogadores;

-- mostra a media de salario dos jogadores
select avg(salario) as media_salarial from jogadores;

-- soma todos os salarios de todos os jogadores e mostra
select sum(salario) as folha_de_pagamento from jogadores;

-- mostra o nome e o ano de fundacao dos times ordenado por nome
select nome, anodefundacao from times
order by nome;

-- mostra a media do valor dos times
select avg(valor) as valor_medio from times;

-- Mostre o ano, salario e data de nascimeto dos jogadores do mais velho para o mais novo 
select nome, salario, datanascimento from jogadores
order by datanascimento asc;

-- mostre o nome e o salario dos jogadores que ganham mais de 2000
select nome, salario from jogadores
where salario > '2000';

-- Mostre o valor total dos times
select sum(valor) as total from times;

-- mostre os nomes dos jogadores ordenados por nome decrescente
select nome from jogadores
order by nome desc;

-- mostre o valor mais baixo de um time
select nome, min(valor) from times
group by nome limit 1;

-- mostre o nome e a datadenasciemnto dos jogadores nascidos a partir do ano 20000
select nome, datanascimento from jogadores
where year (datanascimento) > '2000';

-- mostre o total de jogadores que ganham menos de 30000
select count(nome) from jogadores
where salario < '3000';

-- mostre o maior valor de times
select max(valor) from times;
