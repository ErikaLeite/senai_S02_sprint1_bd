CREATE DATABASE SP_Medical_Group;
GO

USE SP_Medical_Group;
GO

CREATE TABLE tipoUsuario
(
	IdTipoUsuario				INT PRIMARY KEY IDENTITY
	,tituloTipoUsuario			VARCHAR (200) UNIQUE NOT NULL
);
GO

CREATE TABLE usuario
(
	idUsuario		INT PRIMARY KEY IDENTITY
	,idTipoUsuario	INT FOREIGN KEY REFERENCES tipoUsuario (idTipoUsuario)
	,nomeUsuario	VARCHAR (200)		 NOT NULL
	,emailUsuario	VARCHAR (200) UNIQUE NOT NULL
	,senha			VARCHAR (200)		 NOT NULL
);
GO

CREATE TABLE clinica
(
	idClinica		INT PRIMARY KEY IDENTITY
	,clinicaNome	VARCHAR (200) UNIQUE NOT NULL
	,cnpj			CHAR	(14 ) UNIQUE NOT NULL
	,razaoSocial	VARCHAR (200)		 NOT NULL
	,endereco		VARCHAR (255) UNIQUE NOT NULL
);
GO

CREATE TABLE especialidade
(
	idEspecialidade		INT PRIMARY KEY IDENTITY
	,especialidadeNome	VARCHAR (200) UNIQUE NOT NULL
);
GO

CREATE TABLE medico
(
	idMedico			INT PRIMARY KEY IDENTITY
	,idClinica			INT FOREIGN KEY REFERENCES clinica		 (idClinica)
	,idEspecialidade	INT FOREIGN KEY REFERENCES especialidade (idEspecialidade)
	,idUsuario			INT FOREIGN KEY REFERENCES usuario		 (idUsuario)
	,crm				CHAR (7) UNIQUE NOT NULL
);
GO

ALTER TABLE medico
ADD nome  VARCHAR (100) NOT NULL;

CREATE TABLE paciente
(
	idPaciente			INT PRIMARY KEY IDENTITY
	,idUsuario			INT FOREIGN KEY REFERENCES usuario (idUsuario)
	,cpf				CHAR	(11)  UNIQUE NOT NULL
	,rg					VARCHAR (200) UNIQUE NOT NULL
	,dataNascimento		DATE	             NOT NULL
	,telefone			INT
	,endereco			VARCHAR (255)		 NOT NULL
);
GO

ALTER TABLE paciente
ADD cep  CHAR (8) NOT NULL;

ALTER TABLE paciente
ADD nome  VARCHAR (100) NOT NULL;

SELECT * FROM medico

CREATE TABLE statusConsulta
(
	idStatus	INT PRIMARY KEY IDENTITY
	,nomeStatus	VARCHAR (200) UNIQUE NOT NULL
);
GO

CREATE TABLE consulta
(
	idConsulta			INT PRIMARY KEY IDENTITY
	,idPaciente			INT FOREIGN KEY	REFERENCES paciente (idPaciente)
	,idMedico			INT FOREIGN KEY REFERENCES medico	(idMedico)
	,statusConsulta		BIT DEFAULT (1)
	,descricao		VARCHAR(255)
	,dataHoraConsulta	DATETIME			 NOT NULL
);
GO
