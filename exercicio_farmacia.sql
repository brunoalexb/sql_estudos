

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_produtos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
preco FLOAT(7,2) NOT NULL,
descricao TEXT,
estoque INT NOT NULL,
categoria_id INT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

ALTER TABLE tb_produtos MODIFY COLUMN preco DECIMAL(7,2) NOT NULL;

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Medicamentos', 'Produtos destinados a tratamento ou prevenção de doenças.'),
('Higiene', 'Produtos relacionados à higiene pessoal e limpeza.'),
('Beleza', 'Produtos para cuidados estéticos e beleza.'),
('Suplementos', 'Vitaminas, minerais e suplementos alimentares.'),
('Infantil', 'Produtos especialmente desenvolvidos para crianças, como fraldas e brinquedos.');


INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES 

('Paracetamol 500mg', 'Analgésico e antitérmico.', 26.50, 100, 1), 
('Ibuprofeno 200mg', 'Anti-inflamatório e analgésico.', 32.90, 50, 1),

('Creme Dental Colgate', 'Proteção contra cáries.', 7.20, 200, 2), 
('Shampoo Seda 350ml', 'Shampoo para cabelos normais.', 25.50, 80, 2),

('Batom Vermelho Avon', 'Batom com longa duração.', 69.00, 30, 3), 
('Hidratante Nivea 200ml', 'Hidratante para pele seca.', 40.00, 25, 3),

('Vitamina C 1g', 'Reforço para o sistema imunológico.', 12.50, 40, 4), 
('Ômega 3 1000mg', 'Suplemento para saúde cardiovascular.', 25.90, 20, 4),

('Fralda Pampers', 'Fraldas descartáveis para bebês.', 70.00, 150, 5), 
('Brinquedo de Pelúcia', 'Pelúcia macia e segura para bebês.', 45.00, 80, 5);

SELECT * FROM  tb_produtos WHERE preco > 50;

SELECT * FROM  tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM  tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome 
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.nome 
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Suplementos';