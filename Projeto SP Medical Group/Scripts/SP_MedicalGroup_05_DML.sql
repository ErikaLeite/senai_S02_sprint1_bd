USE SP_Medical_Group;
GO
INSERT INTO tipoUsuario (tituloTipoUsuario)
VALUES					('Admin'),
						('Paciente'),
						('M�dico');
GO

INSERT INTO clinica (clinicaNome, cnpj, razaoSocial, endereco)
VALUES				('Cl�nica Possarle', '86400902000130', 'SP Medical Group', 'Av. Bar�o Limeira, 532, S�o Paulo, SP');
GO
INSERT INTO especialidade (especialidadeNome)
VALUES					   ('Acunpuntura'),
						   ('Anestesiologia'),
						   ('Angiologia'),
						   ('Cardiologia'),
						   ('Cirurgia Cardiovascular'),
						   ('Cirurgia da M�o'),
						   ('Cirurgia do Aparelho Disgestivo'),
						   ('Cirurgia Geral'),
						   ('Cirurgia Pedi�trica'),
						   ('Cirurgia Pl�stica'),
						   ('Cirurgia Tor�cica'),
						   ('Cirurgia Vascular'),
						   ('Dermatologia'),
						   ('Radioterapia'),
						   ('Urologia'),
						   ('Pediatria'),
						   ('Psiquiatria');
GO

INSERT INTO usuario (IdTipoUsuario, nomeUsuario, emailUsuario, senha)
VALUES				 (1, 'adm','adm@adm.com', 'adm123'),
					 (2, 'Ligia','ligia@gmail.com', 'ligia123'),
				     (2, 'Alexandre','alexandre@gmail.com', 'alexandre123'),
				     (2, 'Fernando', 'fernando@gmail.com', 'fernando123'),
				     (2, 'Henrique', 'henrique@gmail.com', 'henrique123'),
				     (2, 'Jo�o', 'joao@gmail.com', 'joao123'),
				     (2, 'Bruno', 'bruno@gmail.com', 'bruno123'),
				     (2, 'Mariana', 'mariana@gmail.com', 'mariana123'),
				     (3, 'Ricardo', 'ricardo.lemos@spmedicalgroup.com.br', 'ricardolemos123'),
				     (3, 'Roberto', 'roberto.possarle@spmedicalgroup.com.br', 'robertopossarle123'),
				     (3, 'Helena', 'helena.souza@spmedicalgroup.com.br', 'helenastrada123');
GO

INSERT INTO paciente   (idUsuario, dataNascimento, telefone, rg, cpf, cep, endereco)
VALUES				   (2, '13/10/1983', '1134567654', '435225435', '94839859000', '04022000', 'R. Estado de Israel, 240 - Vila Mariana, S�o Paulo - SP'),
					   (3, '23/07/2001', '11987656543', '326543457', '73556944057', '01310200', 'Av. Paulista, 1578 - Bela Vista, S�o Paulo - SP'),
					   (4, '10/10/1978', '11972084453', '546365253', '16839338002', '04029200', 'Av. Ibirapuera , 2927 - Indian�polis, S�o Paulo - SP'),
					   (5, '13/10/1985', '1134566543', '543663625', '14332654765', '06402030', 'R. Vit�ria, 120 - Vila Sao Jorge, Barueri - SP'),
					   (6, '27/08/1975', '1176566377', '325444441', '91305348010', '09405380', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeir�o Pires - SP'),
					   (7, '21/03/1972', '11954368769', '545662667', '79799299004', '04524001', 'Al. dos Arapan�s, 945 - Indian�polis, S�o Paulo - SP'),
					   (8, '05/03/2018', '', '545662668', '13771913039', '06407140', 'R. Sao Antonio, 232 - Vila Universal, Barueri - SP');
GO



INSERT INTO medico (idUsuario, idClinica, idEspecialidade, crm)
VALUES				 (9, 1, 2, '54356'),
					 (10, 1, 17,'53452'),
					 (11, 1, 16,'65463');
GO

INSERT INTO statusConsulta (nomeStatus)
VALUES						('Agendada'),
							('Realizada'),
							('Cancelada');
GO

INSERT INTO consulta (idPaciente, idMedico, statusConsulta, descricao,dataHoraConsulta)
VALUES     (7, 3, 1, 'lorem','20/01/2020  15:00'),
	   (2, 2, 1, 'lorem', '06/01/2020  10:00'),
	   (3, 2, 1, 'ipsum', '07/02/2020  11:00'),
	   (2, 2, 1, 'desc', '06/02/2018  10:00'),
	   (4, 1, 1, 'test', '07/02/2019  11:00'),
	   (7, 3, 1, 'lorem', '08/03/2020  15:00'),
	   (4, 1, 1, 'ipsum', '09/03/2020  11:00');
GO

