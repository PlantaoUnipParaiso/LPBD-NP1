-- CREATE SCHEMA e USE
CREATE SCHEMA modelo;
USE modelo;

-- CREATE TABLE
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10, 2),
    categoria VARCHAR(50)
);

-- INSERT INTO
INSERT INTO produtos (id, nome, preco, categoria) VALUES
(1, 'Chocolate', 2.99, 'Doces'),
(2, 'Arroz', 3.49, 'Grãos'),
(3, 'Notebook', 1200.00, 'Eletrônicos');

-- SELECT com WHERE e AS (alias)
SELECT nome AS nome_produto, preco FROM produtos WHERE categoria = 'Doces';

-- ALTER TABLE, ADD COLUMN
ALTER TABLE produtos ADD quantidade INT;

-- SELECT com INNER JOIN
SELECT p.nome AS produto, c.nome AS cliente
FROM produtos AS p
INNER JOIN compras AS c ON p.id = c.id_produto;