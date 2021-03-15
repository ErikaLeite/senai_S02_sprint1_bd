USE optusPlay;

INSERT INTO permissao (permissao)
VALUES ('Admin'),
	   ('Comum');

INSERT INTO usuario (nome, email, senha, idPermissao)
VALUES				('Erika', 'erk@gmail.com', '123', 1),
					('Fulana', 'fulana@gmail.com', '123/', 2);

INSERT INTO visualizacao (visualizacao)
VALUES ('Disponível'),
	   ('Indisponível');

INSERT INTO artista
VALUES ('MC Thaa'),
	   ('Jup do Bairro');

INSERT INTO Album (titulo, idArtista, duracao, localizacao, dataLancamento, idVisualizacao)
VALUES ('Corpo Sem Juízo',	2,			30,		'São Paulo', '01/06/2020',		1),
	   ('Rito de Passá',	1,			30,		'São Paulo', '21/06/2020',		1);

INSERT INTO estilo (nome)
VALUES ('Funk'),
	   ('Trap');

INSERT INTO estiloVinculado (idAlbum, idEstilo)
VALUES (1, 2),
	   (2, 1);

--SELECT * FROM