USE ORDEMSERVICO2
GO

-- INSERT 
INSERT INTO MAODEOBRA (DESCRICAO, VALOR) VALUES 
('Troca de Filtro do �leo', 60),
('Troca da Bieletas', 50),
('Troca da Bomba de Combust�vel', 150),
('Instala��o de Amortecedores', 600),
('Instala��o Sensor de R�', 200),
('Troca do �leo', 100)

SELECT * FROM MAODEOBRA


INSERT INTO SERVICO (DESCRICAO, IDSMAODEOBRA) VALUES 
('Troca de Filtro', 1),
('Amortecedores', 4),
('Sensor de R�', 5),
('Bieletas', 2),
('Bomba Combust�vel', 3),
('�leo', 6)

SELECT * FROM SERVICO

INSERT INTO EQUIPE (DESCRICAO) VALUES
('Filtros'),
('Motor'),
('Amortecedor'),
('Multim�dia'),
('Geral'),
('El�trica')

SELECT * FROM EQUIPE

INSERT INTO MECANICO (NOME, ENDERECO, ESPECIALIDADE, IDMEQUIPE) VALUES
('Jo�o Pedro', 'Rua Idu, 12, S�o Paulo', 'Amortecedores', 3),
('Ricardo Mendes', 'Avenida Sete, 45, S�o Paulo', 'Geral', 5),
('Luiz Milli', 'Rua Logara, 99, S�o Paulo', 'Motor', 2),
('Marcos Mito', 'Rua Uiara, 12, S�o Paulo', 'Filtros', 1),
('Jo�o Marcos', 'Rua Selemar, 290, S�o Paulo', 'Multimida', 4),
('Leandro Augusto', 'Avenida Manaus, 929, S�o Paulo', 'Geral', 5),
('Paulo Gustavo', 'Rua Manoel, 77, S�o Paulo', 'El�trica', 6),
('Maiara Silva', 'Rua Louren�o, 43, S�o Paulo', 'El�trica', 6),
('Gustavo Junior', 'Rua Ita, 87, S�o Paulo', 'Amortecedores', 3),
('Mario Silva', 'Rua dos Silva, 854, S�o Paulo', 'Filtros', 1)

SELECT * FROM MECANICO

INSERT INTO CLIENTE (NOME, ENDERECO, CPF, CNPJ) VALUES
('Jo�o Silva', 'Rua Doutor Pedro, 1, S�o Paulo', 12345678901, null),
('Leila Teixeira', 'Rua Denis, 44, S�o Paulo', 12312312312, null),
('Quitandinha', 'Avenida da Costa, 900, S�o Paulo', null, 123456789012345),
('Mauricio Lomber', 'Rua Genivaldo, 38, S�o Paulo', 11133344455, null),
('Silva e Silva', 'Avenida Ricardo J, 65, S�o Paulo', null, 098765432109876)

SELECT * FROM CLIENTE

INSERT INTO VEICULO (IDVCLIENTE, MARCA, MODELO) VALUES
(1, 'Renault', 'Sandero'),
(2, 'Fiat', 'Argo'),
(3, 'Fiat', 'Mobi'),
(4, 'Audi', 'A3'),
(5, 'Volkswagen', 'Jetta'),
(5, 'Volkswagen', 'Voyage')

SELECT * FROM VEICULO

INSERT INTO ORDEMSERVICO (NUMERO, DATAEMISSAO, VALOR, STATUS, DATACONCLUSAO) VALUES
(1, '20221001', 300, 'Finalizado','20221011'),
(2, '20221002', 300, 'Em Processamento','20221012'),
(3, '20221002', 300, 'Executando','20221014'),
(4, '20221004', 300, 'Em Processamento','20221015'),
(5, '20221006', 300, 'Executando','20221022'),
(6, '20221006', 300, 'Em Processamento','20221022')

SELECT * FROM ORDEMSERVICO

INSERT INTO PECASVEICULO (DESCRICAO, VALOR) VALUES
('Par Amortecedores', 1500),
('Filtro de �leo', 90),
('Bieletas', 60),
('Bomba de Combust�vel', 200),
('Kit Sensor R�', 300),
('�leo', 220)

SELECT * FROM PECASVEICULO

INSERT INTO PECASSERVICOS (IDPSORDEMSERVICO, IDPSPECA) VALUES
(1,3),
(2,4),
(3,5),
(4,2),
(4,3),
(5,1),
(5,6),
(6,1),
(6,6)

SELECT * FROM PECASSERVICOS

INSERT INTO EQUIPEORDEMSERVICO (IDEOSORDEMSERVICO, IDEOSEQUIPE) VALUES 
(1, 3),
(2, 5),
(3, 4),
(4, 3),
(5, 5),
(6, 2)

SELECT * FROM EQUIPEORDEMSERVICO

INSERT INTO CLIENTESERVICOS (IDCSCLIENTE, IDCSORDEMSERVICO) VALUES 
(1, 1),
(2, 2),
(3, 4),
(4, 3),
(5, 5),
(5, 6)

SELECT * FROM CLIENTESERVICOS

INSERT INTO SERVICOORDEMSERVICO (IDSOSORDEMSERVICO, IDSOSSERVICO) VALUES
(1, 4),
(2, 5),
(3, 1),
(4, 1),
(4, 4),
(5, 2),
(5, 6),
(6, 2),
(6, 6)

SELECT * FROM SERVICOORDEMSERVICO
