USE SP_Medical_Group;
GO

SELECT * FROM tipoUsuario;
SELECT * FROM usuario;
SELECT * FROM paciente;
SELECT * FROM clinica;
SELECT * FROM especialidade;
SELECT * FROM medico;
SELECT * FROM statusConsulta;
SELECT * FROM consulta;

-- Nº de usuários
SELECT COUNT(idUsuario) FROM usuario;

-- Usuário
SELECT idUsuario, NU.nomeUsuario AS tipo, email FROM usuario U
INNER JOIN tipoUsuario TU
ON U.idTipoUsuario = TU.idTipoUsuario;

-- Paciente
SELECT 
	idPaciente, 
	U.email,
	DATEDIFF(year, dataNascimento, GETDATE()) AS [Idade],
	FORMAT(dataNascimento, 'd', 'pt-bt') AS [Data de Nascimento],
	telefone,
	rg,
	cpf,
	cep,
	endereco
FROM paciente P
INNER JOIN usuario U
ON P.idUsuario = U.idUsuario;

-- Clinica
SELECT 
	idClinica,
	nome,
	cnpj,
	razaoSocial,
	endereco
FROM clinica;

-- Médico
SELECT 
	idMedico,
	U.nomeUsuario,
	U.email,
	crm,
	E.nomeEspecialidade AS Especialidade,
	C.nomeClinica AS [Clínica]
FROM medico M
INNER JOIN usuario U
ON M.idUsuario = U.idUsuario
INNER JOIN clinica C
ON M.idClinica = C.idClinica
INNER JOIN especialidade E
ON M.idEspecialidade = E.idEspecialidade;

-- Consulta
SELECT
	idConsulta,
	U.nomeUsuario AS Paciente,
	M.nomeUsuario AS [Médico],
	S.statusConsulta AS [Situação],
	FORMAT(dataConsulta, 'd', 'pt-bt') AS [Data de Agendamento],
	FORMAT(dataAgendamento, 'hh:mm') AS [Horário],
	descricao
FROM consulta C
INNER JOIN paciente P
ON C.idPaciente = P.idPaciente
INNER JOIN medico M
ON C.idMedico = M.idMedico
INNER JOIN statusConsulta S
ON C.IdStatus = S.idStatus;

-- Nome e idade de um paciente de acordo com email
EXEC BuscaIdade 'henrique@gmail.com'
