USE recursos_humanos;

CREATE TABLE colaboradores (
id BigInt auto_increment,
nome varchar(80) not null,
nascimento date,
telefone varchar(20),
cargo varchar (50) not null,
salario decimal (6,2),
PRIMARY KEY (id)
);

ALTER TABLE colaboradores MODIFY salario decimal(7,2);
INSERT INTO colaboradores 
values 
(DEFAULT, 'Carlos dos Santos', '1980-4-22', '223456655', 'Gerente Administrativo', '12000.00'),
(DEFAULT, 'Marcela Alcantara', '1992-6-11', '1322445956', 'Assistente de Produto', '1720.60'),
(DEFAULT, 'Miguel Montes', '1989-6-15', '223444655', 'Auxiliar Administrativo', '1500.30'),
(DEFAULT, 'Flavio Machado', '1985-2-11', '123459951', 'Diretor Geral', '14500.80'),
(DEFAULT, 'Mariana Alencar', '1990-2-11', '137457956', 'Consultora Geral', '13600.20'),
(DEFAULT, 'Gabriela Alcantara', '1995-2-11', '137798956', 'Diretora Comercial', '12600.15');

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000.00;

SELECT * FROM colaboradores WHERE salario < 2000.00;

UPDATE colaboradores SET salario = '1920.60' WHERE id = 2;