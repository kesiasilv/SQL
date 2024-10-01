-- Questoes práticas (Parte 1) usando o BancoTimes --
use bancotimes;

-- 1) insire um novo time com dados a sua escolha:
insert into times (idtimes, nome, valor, anodefundacao) values
(8, 'vasco', 13000, '1999');

select * from times;

-- 2. Insira um novo jogador no Flamengo 
select * from jogadores;
insert into jogadores (nome, salario, datanascimento, idtimes) values ('didi', 2800, '2004-05-24', 2);

--  3. Insira um novo jogador no Vasco 
select * from jogadores;
insert into jogadores (nome, salario, datanascimento, idtimes) values ('fafa', 4500, '1998-12-09', 8);

-- 4. Atualize o valor do Vasco para 100000 
select * from times;
update times set valor = 13000, valor = 100000 where idtimes = 8;

-- 5. Atualize o nome atual do Bahia para EC Bahia
select * from times;
update times set nome = 'Bahia', nome = 'EC Bahia' where idtimes = 1;

-- 6. Remova o time inserido na questão 1
select * from times;
delete from times
where idtimes = 8;

-- 7. Remova o jogador inserido na questão 3 
select * from jogadores;
delete from jogadores
where idjogadores = 14;

-- 8. Remova o jogador KAKA
select * from jogadores;
delete from jogadores
where idjogadores = 7;


