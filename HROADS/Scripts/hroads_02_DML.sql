USE Senai_HROADS_Manha;


INSERT INTO TipoHabilidade (TipoHabilidade)
VALUES					   ('Ataque')
						  ,('Defesa')
						  ,('Cura')
						  ,('Magia');



INSERT INTO Habilidade (NomeHabilidade, IdTipoHabilidade)
VALUES				   ('Lan�a Mortal',		1)
					  ,('Escudo Supremo',   2)
					  ,('Recuperar Vida',   3);



INSERT INTO Classe (NomeClasse)
VALUES			   ('B�rbaro')
				  ,('Cruzado')
				  ,('Ca�adora de Dem�nios')
				  ,('Monge')
				  ,('Necromante')
				  ,('Feiticeiro')
				  ,('Arcanista');


INSERT INTO ClasseHabilidade (IdClasse , IdHabilidade)
VALUES							 (1,			1)
							    ,(1,			2)
							    ,(2,			2)
							    ,(3,			1)
							    ,(4,			3)
							    ,(4,			2)
							    ,(5,		 null)
							    ,(6,		    3)
							    ,(7,		 null);

INSERT INTO Personagem (NomePersonagem, IdClasse, VidaM�xima, ManaM�xima, DataAtualizacao, DataCriacao)
VALUES				   ('DeuBug',			1,		 100,		 80,		'03/03/2021',	'18/01/2019')
					  ,('BitBug',		    4,		 70,	    100,        '03/03/2021',	'17/03/2016')
					  ,('Fer8'  ,			7,		 75,		 60,		'03/03/2021',	'18/03/2018');

-- Tarefa 04 (Atualizar o nome do personagem Fer8 para Fer7)
UPDATE	Personagem
SET     NomePersonagem = 'Fer7'
WHERE   IdPersonagem   =  3;

--Tarefa 05 (Atualizar o nome da classe de Necromante para Necromancer)
UPDATE	Classe
SET		NomeClasse = 'Necromancer'
WHERE	IdClasse   =  5;

--Tarefa 06 (Selecionar todos os personagens)
SELECT * FROM Personagem

--Tarefa 07 (Selecionar todos as classes)
SELECT * FROM Classe;

--Tarefa 08 (Selecionar somente o nome das classes)
SELECT NomeClasse
FROM   Classe;

--Tarefa 09 (Selecionar todas as habilidades)
SELECT * FROM Habilidade;




