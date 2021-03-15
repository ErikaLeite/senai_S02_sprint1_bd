USE Locadora;

INSERT INTO empresa (nome)
VALUES				('Localiza'),
					('Unidas');

INSERT INTO fabricante  (nome)
VALUES					('Honda'),
						('GM');

INSERT INTO modelo (nome, idFabricante)
VALUES				('Civic', 1),
					('Onix',  2);

INSERT INTO veiculo (placa, idModelo, idEmpresa)
VALUES				 ('ERK1993', 1,		 1),
					 ('ELP2021', 2,		 2);

INSERT INTO cliente (nome, cpf)
VALUES				('Fulano', '11111111111'),
				    ('Ciclano', '22222222222');

INSERT INTO aluguel (idCliente, idVeiculo, valor, dataRetirada, dataEntrega)
VALUES				(2, 2, 100, '23/02/2021', '24/02/2021'),
					(1, 1, 150, '24/02/2021', '25/02/2021');