-- DDL


--cria um banco de dados (inserir nome)
create database Filme;

--seleciona o banco de dados a ser usado
use Filme;

create table Genero
(
--nomecoluna    var		definição chave		definição de identidade
	IdGenero	int		primary key			identity,
	Nome		varchar(250) not null --not null: forçar que o campo seja cadastrado
);

create table Filme
(
	idFilme			int primary key,
	codGenero		int foreign key references Genero (idGenero),
	Titulo			varchar(250) not null
);