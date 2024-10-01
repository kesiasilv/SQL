## Exercícios de tradução 
-- Traduza os comandos SQL a seguir:
1. delete from times where nome = 'Vasco' 
2.update jogadores set salario=10000 where idjogadores =3 
3. Insert into jogadores (nome, salario,idtimes) values ('Xuxa', 4000,1) 
4. Insert into times (nome, anodefundacao) values ('Olaria', 40000) 
5. select nome, salario from jogadores where salario > 2000 
6. select nome, valor from time where anodefundacao < 1950 
7. select nome,salario from jogadores where salario < 400000 
8. select distinct nome from jogadores 
9. select anodefundacao,nome from times order by nome 
10. select max(salario) from jogadores 
11. select count(nome) from times 
12. select avg(salario) from jogadores where datanascimento > '2000-01-10'
/*
Respostas:
1) Deleta a tupla que possui o nome igual a vasco;
2) altera o salario da tabela jogadores onde o id do jogador seja igual a 3;
3) Adiciona mais um registro na tabela jogadores;
4) Adiciona mais um registro na tabela times;
5) Seleciona o nome e o salario da tabela jogadores onde o salario é maior que 2000;
6) Seleciona o nome e o valor da tabela time onde o ano de fundação é menor que 1950;
7) Seleciona o nome e o salario da tabela jogadores onde salario é menor que 400000;
8) Seleciona os nomes que não se repete da tabela jogadores;
9) Seleciona o anodefundacao e nome da tabela times ordenado por nome;
10) Seleciona o salario máximo da tabela jogadores; 
11) Mostra quantos registros de nome da tabela times existe;
12) calcula e mostra a media do salario da tabela jogadores onde a data de nascimento é maior qeu 2000-01-10

*/
