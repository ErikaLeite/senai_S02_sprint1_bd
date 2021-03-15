CREATE DATABASE optusPlay;

USE optusPlay;

CREATE TABLE permissao
(
	idPermissao		INT PRIMARY KEY IDENTITY,
	permissao		VARCHAR(100) NOT NULL
);


CREATE TABLE usuario
(
	idUsuario		INT PRIMARY KEY IDENTITY,
	idPermissao		INT FOREIGN KEY REFERENCES Permissao (IdPermissao),
	nome			VARCHAR(150) NOT NULL,
	email			VARCHAR(200) NOT NULL,
	senha			VARCHAR(100) NOT NULL
);


CREATE TABLE Artista
(
	idArtista		INT PRIMARY KEY IDENTITY,
	nome			VARCHAR(150) NOT NULL,
);


CREATE TABLE visualizacao
(
	idVisualizacao	INT PRIMARY KEY IDENTITY,
	visualizacao	VARCHAR(150) NOT NULL
);


CREATE TABLE album
(
	idAlbum				INT PRIMARY KEY IDENTITY,
	idArtista			INT FOREIGN KEY REFERENCES Artista (IdArtista),
	idVisualizacao		INT FOREIGN KEY REFERENCES Visualizacao (IdVisualizacao),
	titulo				VARCHAR(200) NOT NULL,
	dataLancamento		DATE NOT NULL,
	localizacao			VARCHAR(250) NOT NULL,
	duracao				INT	NOT NULL
);


CREATE TABLE estilo
(
	idEstilo	INT PRIMARY KEY IDENTITY,
	nome		VARCHAR(150) NOT NULL
);


CREATE TABLE estiloVinculado
(
	idAlbum		INT FOREIGN KEY REFERENCES Album (IdAlbum),
	idEstilo	INT FOREIGN KEY REFERENCES Estilo (IdEstilo),
);