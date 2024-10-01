use bancotimes;
describe times;
select *from times;

-- INSERT´- inserir adicionar:
insert into times (nome, valor , anodefundacao) values ('Santos', 4000000, 1921),('Vasco', 5000000, 1891),('Benfica', 40000, 1910),('Barcelona',100000, 1899);
select *from times;

-- ERRO pq só vai até o idtimes 8 :
insert into jogadores (nome, salario, datanascimento,idtimes) values ('Captu',10000,'1999-01-10', 18);

-- deletando o time da posição 5
delete from times where idtimes = 5;
select *from times;

-- descobrindo os jogadores de um time: (intercessao)
select * FROM times as t, jogadores as j where t.idtimes = j.idtimes;
-- t.PK = j.FK

-- selecionando os números dos que tem jogadores:
select distinct(t.idtimes) from times as t, jogadores as j where t.idtimes = j.idtimes;

-- selecionando os times que não tem jogadores: (diferença)
select * from times where times.idtimes not in (select distinct(t.idtimes) from times as t, jogadores as j where t.idtimes = j.idtimes);

-- adicionando jogadpres no vasco (10)
insert into jogadores (nome,salario, datanascimento, idtimes) values ('Guga', 5000000, '1990-10-10', 10),('Mario', 5000000, '1990-10-10', 10),('Luigi', 10000000, '1990-10-10', 10);
insert into jogadores (nome,salario, datanascimento, idtimes) values ('Luca', 5000000, '1990-10-10', 11),('Otavio', 5000000, '1990-10-10', 11),('Luis', 10000000, '1990-10-10', 11);

-- selecionando os times que não tem jogadores: (diferença)
select * from times where times.idtimes not in (select distinct(t.idtimes) from times as t, jogadores as j where t.idtimes = j.idtimes);

-- editando nome do jogador
select * from jogadores;
update jogadores set nome = 'JANIO' where idjogadores = 8;

-- atualizando o nome do time
select * from times;
update jogadores set nome= 'Fluminense' where idtimes = 2;

-- alterando o valor
update times set nome = 'NOVO BAHIA', valor = 5000000 where idtimes= 1;