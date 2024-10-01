## QUESTOES DE TRADUÇAO
delete from times 
where nome = 'vasco';
-- apagando apemas uma linha da tabela times onde ela se tem como nome 'vasco'

update jogadores 
set salario = 1000
where idjogadores = 3;
-- atualizando a tabela jogadores mudando o salario para 1000 onde se localiza na tupla que possui id = 3

insert into jogadores (nome, salario, idtimes) values ('xuxa', 4000, 1);
-- inserindo na tabela jogadores um registro

select nome, valor from jogadores 
where salario > 2000;
-- mostrano o nome e o valor dos jogadores que possui salario maior que 2000

select nome, valor from times
where anodefundacao < 1950;
-- mostrando o nome e o valor dos times que possui um ano de fundacao meenor que 1950

select nome, salario from jogadores 
where salario < 400000;
-- mostra o nome e o salario dos jogadores one possui salario menor que 400000

select distinct nome from jogadores;
-- mostra os nomes diferentes da tabela jogadores (sem repetir)

select anodefunadacao, nome from times 
order by nome;
-- mostra o ano de fundacao e o nome da tabela times ordenado pr nome 

select max(salario) from jogadores;
-- mostra o maior salario da tabela jogadores

select count(nome) from times;
-- conta quantos times tem na tabela times (conta os nomes)

select avg(salario) from jogadores
where datanascimento > '2000-01-10';
-- mostra a media salarial dos jogadores que nasceram em 2000-01-10
