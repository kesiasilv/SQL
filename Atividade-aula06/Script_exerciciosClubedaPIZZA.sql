-- Usando o Banco clude da pizza
use clubedapizza;

-- 1— Insira um novo atendente
select * from atendentes;
insert into atendentes
(idatendentes, nomeatendente, codigo) values
(9, 'junior', 200);

-- 2 — Insira uma nova pizza 
select * from pizzas;
insert into pizzas
(idpizzas, sabor, preco, quantidade, quantidade_critica) values
(15, 'Moda da casa', 60, 70, 10);

-- 3 — Com a pizza inserida na questão anterior altere a quantidade crítica para 5 e o preço para 50,00
update pizzas set quantidade_critica = 10, quantidade_critica = 5 where idpizzas = 15;
update pizzas set preco = 60, preco = 50 where idpizzas = 15;
select * from pizzas;

--  4 — Mostre as pizzas ordenadas pelo preço
select * from pizzas order by preco;

-- 5  Mostre os pedidos ordenados por valor total do maior para o menor 
select * from pedidos;
select * from pedidos order by valor_total desc;

-- 6 — Apague a pizza inserida na questão 2
select * from pizzas;
delete from pizzas where idpizzas = 15;

--  7 — Mostre o valor médio das pizzas
select avg(preco) from pizzas;

-- 8 — Mostre o menor valor total de pedido
select * from pedidos;
select min(valor_total) from pedidos;

-- 9 — Mostre o total de pedidos realizados 
select sum(idpedidos) from pedidos;

--  10 — Mostre as datas que tiveram pedidos sem repetiçao
select distinct(datapedido) from pedidos;

-- 11 — Mostre a quantidade de pizzas com preço acima de 50 reais
select * from pizzas where preco > 50;

-- 12— Mostre as pizzas cuja quantidade crítica é 5 pizzas de diferença em relação a quantidade em estoque.
-- não entendi 

-- 13 - Insira um novo pedido
select * from pedidos;
insert into pedidos
(idpedidos, idatendentes, idsocios, datapedido, valor_total) values
(84, 3, 6, '2024-09-08', 100);

-- 14 - Insira itens para este pedido
select * from itens;
insert into itens
(idpedidos, idpizzas, quantidade, tipo) values
(13, 7, 5, 1);

-- 15 -Modifique o preço da pizza CALABRESA para 30 reais
select * from pizzas;
update pizzas set preco = 35, preco = 30 where idpizzas = 2;

-- 16 - Modifique os dados do atendente da questão 1 para seus dados
select * from atendentes;
update atendentes set nomeatendente = 'junior', nomeatendente = 'kesia' where idatendentes = 9;

