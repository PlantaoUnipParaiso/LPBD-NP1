-- Schema
CREATE SCHEMA revisão;
USE revisão;

-- Tabela Marcas
CREATE TABLE marcas ( 
	id INT PRIMARY KEY,
  nome VARCHAR(50)
);

INSERT INTO marcas (id, nome) VALUES (1, 'm1');
INSERT INTO marcas (id, nome) VALUES (2, 'm2');
INSERT INTO marcas (id, nome) VALUES (3, 'm3');
INSERT INTO marcas (id, nome) VALUES (4, 'm4');
INSERT INTO marcas (id, nome) VALUES (5, 'm5');

SELECT * FROM marcas;

-- Tabela Produtos
CREATE TABLE produtos (
	id INT PRIMARY KEY,
  nome VARCHAR(50),
  id_marca INT
	-- FOREIGN KEY (id_marca) REFERENCES marcas(id)
);

INSERT INTO produtos (id, nome, id_marca) VALUES (1, 'p1', 3);
INSERT INTO produtos (id, nome, id_marca) VALUES (2, 'p2', 2);
INSERT INTO produtos (id, nome, id_marca) VALUES (3, 'p3', 3);
INSERT INTO produtos (id, nome, id_marca) VALUES (4, 'p4', 1);
INSERT INTO produtos (id, nome, id_marca) VALUES (5, 'p5', 3);
INSERT INTO produtos (id, nome, id_marca) VALUES (6, 'p6', 5);
INSERT INTO produtos (id, nome, id_marca) VALUES (7, 'p7', 1);

SELECT * FROM produtos;
SELECT p.nome, m.nome FROM produtos AS p JOIN marcas AS m ON p.id_marca = m.id;
# A tabela sera vista com a coluna DIREITA ordenada de forma crescente
SELECT p.nome, m.nome FROM produtos AS p RIGHT JOIN marcas AS m ON p.id_marca = m.id;
# A tabela sera vista com a coluna ESQUERDA ordenada de forma crescente
SELECT p.nome, m.nome FROM produtos AS p LEFT JOIN marcas AS m ON p.id_marca = m.id;

# fk_id_marca adiciona um nome a FOREIGN KEY, normalmente o sistema fara isso, porem dessa forma temos mais autonomia.
ALTER TABLE produtos ADD CONSTRAINT fk_id_marca FOREIGN KEY (id_marca) REFERENCES marcas(id);