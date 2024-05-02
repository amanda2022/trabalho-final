/* veiculos: */

CREATE TABLE veiculos (
    id_veiculo INTEGER PRIMARY KEY,
    cod_veiculo VARCHAR UNIQUE,
    nome VARCHAR,
    ano VARCHAR,
    valor FLOAT,
    cor VARCHAR,
    chassi VARCHAR,
    placa VARCHAR
);

INSERT INTO veiculos (id_veiculo, cod_veiculo, nome, ano, valor, cor, chassi, placa) VALUES
  (1, 'FIT123', 'Fit', 2023, 57200, 'cinza','2023987654', 'FIT2023'),
  (2, 'CIT123', 'City', 2023, 114300, 'prata','2023654987', 'CIT2023'),
  (3, 'CIV123', 'Civic', 2024, 225900, 'preto','2023123456', 'CIV2023');
  
SELECT * FROM veiculos;

/* categorias: */

CREATE TABLE categoria (
    id_categoria INTEGER PRIMARY KEY,
    cod_categoria VARCHAR UNIQUE,
    nome VARCHAR,
    id_veiculo INTEGER
);

INSERT INTO categoria (id_categoria, cod_categoria, nome, id_veiculo) VALUES
	(1, 'ESP2023', 'COMPACTO', 1),
    (2, 'EXE2023', 'EXECUTIVO', 2),
    (3, 'ESP2024', 'ESPORTIVO', 3);

SELECT * FROM categoria;

/* clientes: */

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR,
    cpf_cnpj VARCHAR UNIQUE
);

INSERT INTO cliente (id_cliente, nome, cpf_cnpj) VALUES
	(1, 'Amanda', '12345678900'),
    (2, 'Hudson', '98765432100'),
    (3, 'Rafael', '78912345600'),
    (4, 'Thiago', '32165498700');

SELECT * FROM cliente;

/* seguradora: */

CREATE TABLE seguradora (
    id_seguradora INTEGER,
    cod_seguradora VARCHAR UNIQUE,
    nome VARCHAR
);

INSERT INTO seguradora (id_seguradora, cod_seguradora, nome) VALUES
	(1, 'SEGTOK', 'Tokio Marine'),
    (2, 'SEGYOU', 'Youse'),
    (3, 'SEGPSE', 'Porto Seguro');

SELECT * FROM seguradora;

/* seguro: */

CREATE TABLE seguro (
    id_seguro INTEGER PRIMARY KEY,
    cod_seguro VARCHAR,
    nome VARCHAR,
    id_seguradora INTEGER
);

INSERT INTO seguro (id_seguro, cod_seguro, nome, id_seguradora) VALUES
	(1, 'TOK123', 'Seguro Auto', 1),
    (2, 'YOU123', 'Seguro Auto Youse', 2),
    (3, 'PSE123', 'Seguro Auto PSE', 3);

SELECT * FROM seguro;

/* venda: */

CREATE TABLE venda (
    id_venda INTEGER PRIMARY KEY,
    id_veiculo INTEGER,
    valor FLOAT,
    id_seguro INTEGER
);

alter table venda add COLUMN id_cliente INT not NULL;

INSERT INTO venda (id_venda, id_veiculo, valor, id_seguro, id_cliente) VALUES
	(1, 1, 58000, 1, 1),
    (2, 2, 115000, 2, 2),
    (3, 3, 226000, 3, 3),
    (4, 3, 226000, 3, 4),
    
    (5, 1, 58000, 1, 4),
    (6, 2, 115000, 2, 3),
    (7, 3, 226000, 3, 2),
    (8, 3, 226000, 3, 1),
    
    (9, 1, 58000, 1, 3),
    (10, 2, 115000, 2, 1),
    (11, 3, 226000, 3, 4),
    (12, 3, 226000, 3, 2),
    
    (13, 1, 58000, 1, 2),
    (14, 2, 115000, 2, 4),
    (15, 3, 226000, 3, 1),
    (16, 3, 226000, 3, 3);

SELECT * FROM venda;

-- SELECT juntanto dados de tabelas
 
 SELECT venda.id_venda, cliente.nome, veiculos.nome, categoria.nome, venda.valor, seguro.nome, seguradora.nome FROM venda
 INNER JOIN seguro
 on seguro.id_seguro = venda.id_seguro
 INNER JOIN cliente
 on venda.id_cliente = cliente.id_cliente
 INNER JOIN veiculos
 ON venda.id_veiculo = veiculos.id_veiculo
 INNER JOIN categoria
 ON categoria.id_veiculo = veiculos.id_veiculo
 INNER JOIN seguradora
 ON seguro.id_seguradora = seguradora.id_seguradora
 ORDER by venda.id_venda;