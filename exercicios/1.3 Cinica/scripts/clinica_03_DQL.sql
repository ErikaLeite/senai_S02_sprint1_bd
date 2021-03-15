USE Clinica;

SELECT * FROM dono;
SELECT * FROM tipoPet;
SELECT * FROM raca;
SELECT * FROM pet;
SELECT * FROM vet;
SELECT * FROM clinica;

SELECT 
	idConsulta,
    idVet,
	idPet,
	FORMAT(valor, 'c', 'pt-br') as Valor,
	dataConsulta,
	descricao
FROM consulta;

SELECT
	clinica.nome AS clinica,
	vet.nome AS [Veterinário],
	crmv
FROM clinica
INNER JOIN vet
ON clinica.idClinica = vet.idClinica
WHERE clinica.nome LIKE 'Clinica Raio de Sol';

-- Todas as raças que começam com a letra 'R'
SELECT * FROM raca
WHERE raca LIKE 'c%';

-- Todos os tipos de pet que terminam com a letra 'R'
SELECT * FROM tipoPet
WHERE tipo LIKE '%r'

-- Todos os pets e seus respectivos donos
SELECT dono.nome AS Dono, pet.nome AS Pet FROM dono
INNER JOIN pet
ON dono.idDono = pet.idDono;
