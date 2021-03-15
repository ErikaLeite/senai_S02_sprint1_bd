USE Locadora;

SELECT * FROM empresa;
SELECT * FROM fabricante;
SELECT * FROM modelo;
SELECT * FROM veiculo;
SELECT * FROM cliente;
SELECT * FROM aluguel;

SELECT IdAluguel,
	   FORMAT(DataRetirada, 'd', 'pt-bt') AS [Data de Retirada],
	   FORMAT(DataEntrega, 'd', 'pt-bt') AS [Data de Entrega],
	   cliente.nome AS [Cliente],
	   modelo.nome AS [Carro],
	   FORMAT(valor, 'c', 'pt-br') AS Valor
FROM aluguel
LEFT JOIN cliente
ON aluguel.idCliente = cliente.idCliente
INNER JOIN veiculo
ON aluguel.idVeiculo = veiculo.idVeiculo
INNER JOIN modelo
ON veiculo.idModelo = modelo.idModelo;

SELECT idAluguel,
	   FORMAT(DataRetirada, 'd', 'pt-bt') AS [Data de Retirada],
	   FORMAT(DataEntrega, 'd', 'pt-bt') AS  [Data de Entrega],
	   cliente.nome AS [Cliente],
	   modelo.nome AS  [Carro],
	   FORMAT(valor, 'c', 'pt-br') AS valor
FROM aluguel
LEFT JOIN cliente
ON aluguel.idCliente = cliente.idCliente
INNER JOIN veiculo
ON aluguel.idVeiculo = veiculo.idVeiculo
INNER JOIN modelo
ON veiculo.idModelo = modelo.idModelo
WHERE cliente.nome LIKE 'Fulano'