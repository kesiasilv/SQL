create database biblioteca;
CREATE TABLE Usuario 
( 
 nome varchar(30) not null,  
 Id_usuario INT PRIMARY KEY,  
 data_adesao date not null,  
 endereco varchar(60),  
 telefone INT,
 data_nascimento date,
 sexo character
); 

describe usuario;

CREATE TABLE Emprestimo 
( 
 Id_emprestimo INT PRIMARY KEY,  
 data_emprestimo date not null, 
 nome_usuario varchar(60),
 id_usuario int,  
 id_livro int,
 data_devolucao date
); 

describe emprestimo;

CREATE TABLE livro 
( 
 ISBN int primary key,
 Titulo varchar(30),
 autor varchar(30),
 ano_publicacao year
); 

describe livro;

alter table emprestimo 
change column id_livro ISBN int;

ALTER TABLE emprestimo ADD FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario);
ALTER TABLE emprestimo ADD FOREIGN KEY(ISBN) REFERENCES livro (ISBN);



