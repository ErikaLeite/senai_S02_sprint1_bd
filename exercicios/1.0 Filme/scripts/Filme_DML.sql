use Filme;

INSERT INTO Genero (Nome)
VALUES			   ('A��o')
				  ,('Aventura')
				  ,('Terror')
GO

INSERT INTO Filme  (codGenero, Titulo)
VALUES			   (2,'Dora Aventureira')
				  ,(3,'Invoca��o do Mal')
				  ,(1,'Velozes e Furiosos')
GO

SELECT * FROM Filme
SELECT * FROM Genero