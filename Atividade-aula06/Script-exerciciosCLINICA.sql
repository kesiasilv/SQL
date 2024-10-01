-- Usando o Banco clinica
use clinica2021;

-- 1 — Adicione um novo paciente com seu nome
insert into pacientes
(idpacientes, nome, sexo, idade, doenca_inicial) values
(39, 'ana', 'F', 22, 'tristeza');
select * from pacientes;

-- 2 — Adicione uma nova doença
insert into doencas
(iddoencas, descricao) values
(16, 'ansiedade');
select * from doencas;

-- 3 — Adicione um novo ambulatorio
insert into ambulatorios
(idambulatorios, numero, andar, capacidade) values
(14, 8, 3, 55);
select * from ambulatorios;

-- 4 — Altere o nome que você colocou na questão um para seu nome completo com idade de 30 anos
update pacientes set nome = 'ana', nome = 'kesia silva viana' where idpacientes = 39;
update pacientes set idade = '22', idade = 30 where idpacientes = 39;
select * from pacientes;

--  5 — Apague a doença inserida na questão 2
delete from doencas where iddoencas = 16;
select * from doencas;

-- 6 — Adicione um novo funcionário. Deu certo? Se não deu certo, o que faltou?
select * from funcionarios;
insert into funcionarios (idfuncionarios, idambulatorios, nome, idade, sexo, salario, cidade) values
(20, 7, 'ana', 23, 'f', 2500, 'Pintopolis');

-- 7 — Insira uma nova especialidade
select * from especialidades;
insert into especialidades (idespecialidades, descricao) values (15, 'Odontologia');

-- 8 — Insira um novo médico
select * from medicos;
insert into medicos (idmedicos, idambulatorios, nome, crm, salario, idade, idespecialidades) 
values (15, 3, 'clara amorim', 22332, 22000, 32, 4);

-- 9 — De um aumento para 10.000 reais para o médico inserido na questão 8
update medicos set salario = 22000, salario = 32000 where idmedicos = 15;
select * from medicos;

-- 10 — Altere a capacidade do ambulatório 2 para 50
select * from ambulatorios;
update ambulatorios set capacidade = 50, capacidade = 50 where idambulatorios = 2;

-- 11 — Insira um novo paciente
insert into pacientes
(idpacientes, nome, sexo, idade, doenca_inicial) values
(40, 'flora', 'F', 34, 'frio');
select * from pacientes;

-- 12 — Apague o paciente da questão anterior
delete from pacientes where idpacientes = 40;

-- 13 — Insira uma consulta para pacientes e médicos válidos
insert into consultas
(idmedicos, idpacientes, idambulatorios, dia, hora, iddoencas) values (4, 7, 3, '2024-08-23', '09:00:09', 9);
select * from consultas;

-- 14 — Modifique o dia e hora da consulta inserida na questão anterior
update consultas set dia = '2024-08-23', dia = '2028-09-13' where idpacientes = 7;
update consultas set hora = '09:00:09', hora = '11:09:00' where idpacientes = 7;
select * from consultas;

-- 15 — Altere os dados do primeiro funcionário inserido no banco de dados
update funcionarios set nome = 'Fernando Sac Anna', nome = 'livia' where idfuncionarios = 1;
update funcionarios set idade = 33, idade = 24 where idfuncionarios = 1;
update funcionarios set sexo = 'M', sexo = 'F' where idfuncionarios = 1;
update funcionarios set salario = 2800, salario = 5000 where idfuncionarios = 1;
update funcionarios set cidade = 'Salvador', cidade = 'Brasilia' where idfuncionarios = 1;
select * from funcionarios;