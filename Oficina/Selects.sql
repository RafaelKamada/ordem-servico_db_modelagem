USE ORDEMSERVICO2
GO

-- Clientes com o nome "Silva" e possuam mais de 1 ve�culo
SELECT 
	COUNT(*) AS	QUANTIDADE
FROM CLIENTE C
	INNER JOIN VEICULO V ON C.IDCLIENTE = V.IDVCLIENTE
WHERE 
	NOME LIKE '%SILVA%'
GROUP BY IDCLIENTE
HAVING COUNT(*) > 1

-- Rela��o Cliente e Ve�culos
SELECT 
	NOME,
	ENDERECO,
	CASE WHEN ISNULL(CPF, '') = '' THEN CONCAT('CNPJ: ', CNPJ)
		ELSE CONCAT('CPF: ', CPF) END AS DOCUMENTO,
	CONCAT(V.MARCA, ' - ', V.MODELO) AS CARRO
FROM CLIENTE C 
	INNER JOIN VEICULO V ON C.IDCLIENTE = V.IDVCLIENTE
ORDER BY 1 DESC

-- Quantas Equipes possuem mais de um Mec�nico?
SELECT 
	E.DESCRICAO AS EQUIPE,
	COUNT(*) AS	'QUANTIDADE DE MEC�NICOS'
FROM EQUIPE E
	INNER JOIN MECANICO ON IDMEQUIPE = E.IDEQUIPE
GROUP BY E.IDEQUIPE, E.DESCRICAO
HAVING COUNT(*) > 1
ORDER BY 2 ASC

-- Rela��o Ordem Servi�o, Equipe
SELECT 
	NUMERO,
	STATUS,
	DESCRICAO AS 'DESCRI��O EQUIPE'
FROM ORDEMSERVICO 
	INNER JOIN EQUIPEORDEMSERVICO ON IDORDEMSERVICO = IDEOSEQUIPE
	INNER JOIN EQUIPE ON IDEOSEQUIPE = IDEQUIPE
ORDER BY DESCRICAO ASC

-- Rela��o Servi�o e M�o de Obra.
SELECT 
	S.IDSERVICO,
	S.DESCRICAO,
	M.IDMAODEOBRA,
	M.DESCRICAO,
	M.VALOR
FROM SERVICO S
	INNER JOIN MAODEOBRA M ON S.IDSMAODEOBRA = M.IDMAODEOBRA
ORDER BY 1 ASC

-- Quais Pe�as foram utilizadas nas Ordens de Servi�os 3 e 5.
SELECT 
	NUMERO,
	IDPECA,
	DESCRICAO
FROM ORDEMSERVICO
	INNER JOIN PECASSERVICOS ON IDORDEMSERVICO = IDPSORDEMSERVICO
	INNER JOIN PECASVEICULO ON IDPSPECA = IDPECA
WHERE IDORDEMSERVICO IN (3, 5)
ORDER BY IDPECA DESC

-- Rela��o Ordem Servi�o, Cliente, Ve�culo e Servi�o
SELECT IDORDEMSERVICO, STATUS, P.DESCRICAO, NOME , concat(MARCA, ' - ' ,MODELO)
FROM ORDEMSERVICO O
	INNER JOIN PECASSERVICOS ON IDORDEMSERVICO = IDPSORDEMSERVICO
	INNER JOIN PECASVEICULO P ON IDPECA = IDPSPECA
	INNER JOIN CLIENTESERVICOS ON IDCSORDEMSERVICO = IDORDEMSERVICO
	INNER JOIN CLIENTE C ON IDCLIENTE = IDCSCLIENTE
	INNER JOIN VEICULO V ON C.IDCLIENTE = V.IDVCLIENTE
	INNER JOIN SERVICOORDEMSERVICO ON IDSOSORDEMSERVICO = IDORDEMSERVICO
	INNER JOIN SERVICO S ON IDSERVICO = IDSOSSERVICO
GROUP BY IDORDEMSERVICO, STATUS, P.DESCRICAO , NOME , MARCA, MODELO

-- Quais Servi�os est�o atrelados a alguma Ordem de Servi�o
SELECT
	DESCRICAO,
	COUNT(*) AS QUANTIDADE
FROM ORDEMSERVICO
	INNER JOIN SERVICOORDEMSERVICO ON IDORDEMSERVICO = IDSOSORDEMSERVICO
	INNER JOIN SERVICO ON IDSERVICO = IDSOSSERVICO
GROUP BY DESCRICAO
ORDER BY QUANTIDADE, DESCRICAO ASC