USE ecommerce;

CREATE TABLE produtos(
id BigInt auto_increment,
produto varchar(50) not null,
preco decimal (7,2) not null,
sexo char(1),
categoria varchar(60),
estoque int not null,
data_cadastro date not null,
primary key(id)
);

select * from produtos;

INSERT INTO produtos (produto, preco, sexo, categoria, estoque, data_cadastro)
values 
('Camiseta Oversized', '150.20', 'U', 'Roupas', '80', '2024-10-5'),
('Calça Jeans', '180.99', 'F', 'Roupas', '95', '2024-9-9'),
('Tênis Air Force', '769.99', 'M', 'Calçados', '25', '2024-9-22'),
('Vestido', '625.50', 'F', 'Roupas', '30', '2024-8-12'),
('Jaqueta de Couro', '525.50', 'M', 'Roupas', '50', '2024-7-19'),
('Blusa de lã', '115.25', 'U', 'Roupas', '45', '2024-1-7'),
('Tênis Air Jordan', '999.99', 'M', 'Calçados', '10', '2024-11-14'),
('Camiseta básica', '99.99', 'U', 'Roupas', '80', '2024-8-10');

UPDATE produtos SET preco = '699.99' WHERE id = 3;

SELECT * FROM produtos WHERE preco > 500.00;
SELECT * FROM produtos WHERE preco < 500.00;