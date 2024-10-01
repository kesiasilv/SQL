use bancotimes;
select * from jogadores;
describe times;

-- inserindo valores --
insert into times values
(5, 'vasco', 50000, 1950),
(6,'palmeiras', 45000, 1980),
(7, 'corintinhas', 37000, 1877);

insert into jogadores values
('fafa', 2800, '2004-05-24', 9);

select * from times;

delete from times
where idtimes = 5;

-- selecionando apenas os nomes dos jogadores e seus respectivos times --
select j.nome, t.nome from times as t, jogadores as j
where t.idtimes = j.idtimes;

-- selecionando os idtimes sem repetição (distinct) (porem apenas os que possui jogadores) --
select distinct(t.idtimes) from times as t, jogadores as j
 where t.idtimes = j.idtimes;
 
 -- selecionando os times que nao possui jogadores --
 select * from times
 where times.idtimes not in (select distinct(t.idtimes) from times as t, jogadores as j
 where t.idtimes = j.idtimes);
 
 insert into jogadores (nome, salario, datanascimento, idtimes) values
 ('vini', 50000, '1987-06-23', 6),
 ('luiz', 87000, '1988-05-13', 6),
 ('carlos', 90000, '2005-08-12', 6);
 
 -- alterando o nome de uma linha --
 update times set nome = 'Bahia', nome = 'Bahinhinha' where idtimes = 1;

 
 