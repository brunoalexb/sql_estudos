use db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao TEXT,
preco DECIMAL(10, 2) NOT NULL,
tamanho VARCHAR(50),
categoria_id INT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Tradicional', 'Pizzas clássicas feitas com os sabores mais populares.'),
('Premium', 'Pizzas com ingredientes sofisticados e receitas exclusivas.'),
('Vegana', 'Pizzas com ingredientes veganos'),
('Doce', 'Pizzas doces'),
('Especial', 'Pizzas sazonais ou receitas especiais do chef.');


INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, categoria_id) VALUES 

('Margherita', 'Molho de tomate, mussarela e manjericão fresco.', 60.00, 'Média', 1), 
('Pepperoni', 'Molho de tomate, mussarela e fatias de pepperoni.', 70.00, 'Grande', 1),

('Trufada', 'Molho de tomate, mussarela e lascas de trufa negra.', 70.00, 'Média', 2), 
('Camarão Gourmet', 'Molho de tomate, camarão, rúcula e queijo brie.', 100.00, 'Grande', 2),

('Veggie Especial', 'Molho de tomate, queijo vegano, brócolis, tomates e azeitonas.', 70.00, 'Média', 3), 
('Grão de Bico', 'Molho de tomate, queijo vegano e grão de bico assado.', 55.00, 'Pequena', 3),

('Chocolate com Morango', 'Creme de avelã, chocolate derretido e pedaços de morango.', 50.00, 'Pequena', 4), 
('Romeu e Julieta', 'Recheio de goiabada e queijo mascarpone.', 65.00, 'Média', 4),

('Festival de Queijos', 'Molho de tomate, mussarela, brie, gorgonzola e queijo gruyère.', 85.00, 'Grande', 5), 
('Pizza da Estação', 'Ingredientes sazonais frescos escolhidos pelo chef.', 75.00, 'Média', 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > '45.00';

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome
FROM tb_pizzas
INNER JOIN  tb_categorias ON  tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.nome
FROM tb_pizzas
INNER JOIN  tb_categorias ON  tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'doce';