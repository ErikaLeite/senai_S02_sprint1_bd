USE Clinica;

INSERT INTO dono	(nome)
VALUES				('Fulano'),
					('Ciclano');

INSERT INTO tipoPet (tipo)
VALUES				('Roedor'),
					('Pessonhento');

INSERT INTO raca (raca, idTipo)
VALUES			  ('Capivara', 1),
				  ('Jaguatirica', 2);

INSERT INTO pet (nome, dataNascimento, idDono, idRaca)
VALUES		     ('Joana', '25/03/2019', 2, 1),
	             ('Lucas', '04/11/2015', 1, 2);

INSERT INTO vet (idClinica,		crmv,	 nome)
VALUES			(1,			'1234567SP','Bianca'),
				(1,			'9876543RS','Marina');

INSERT INTO clinica  (nome, endereco)
VALUES				 ('Clinica Raio de Sol', 'Rua: São josé, 744');

INSERT INTO consulta (idVet, idPet, valor, dataConsulta, descricao)
VALUES				 (2,	   1,	 50, '14/03/2021', 'Vermifugação'),
					 (1,       2,	150, '24/03/2021', 'Coleta de Urina');
