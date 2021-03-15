CREATE DATABASE Locadora;
USE Locadora;

CREATE TABLE empresa
(
	idEmpresa	INT	PRIMARY KEY	IDENTITY,
	nome		VARCHAR(200) NOT NULL
);

CREATE TABLE fabricante
(
	idFabricante		INT PRIMARY KEY IDENTITY,
	nome				VARCHAR(200) NOT NULL,
);

CREATE TABLE modelo
(
	idModelo			INT PRIMARY KEY IDENTITY,
	nome				VARCHAR(200) NOT NULL,
	idfabricante		INT FOREIGN KEY REFERENCES fabricante(idFabricante)
);

CREATE TABLE veiculo
(
	idVeiculo	INT PRIMARY KEY IDENTITY,
	placa		CHAR (7) NOT NULL,
	idEmpresa	INT FOREIGN KEY REFERENCES empresa (idEmpresa),
	idModelo	INT FOREIGN KEY REFERENCES modelo  (IdModelo)
);

CREATE TABLE cliente
(
	idCliente	INT PRIMARY KEY IDENTITY,
	nome		VARCHAR(150) NOT NULL,
	cpf			CHAR    (11) NOT NULL
);

CREATE TABLE Aluguel
(
	idAluguel		INT PRIMARY KEY IDENTITY,
	valor			MONEY NOT NULL,
	idVeiculo		INT FOREIGN KEY REFERENCES Veiculo (IdVeiculo),
	idCliente		INT FOREIGN KEY REFERENCES Cliente (IdCliente),
	dataRetirada	DATE NOT NULL,
	dataEntrega		DATE NOT NULL
);
