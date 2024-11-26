 USE db_generation_game_online;
 
 CREATE TABLE tb_classes(
 id INT AUTO_INCREMENT,
 classe VARCHAR(50) NOT NULL,
 PRIMARY KEY(id)
 );
 
INSERT INTO tb_classes (classe) 
VALUES 
('Guerreiro'),
('Mago'),
('Fada');

INSERT INTO tb_classes (classe) 
VALUES 
('Lutador'),
('Tanque');

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    vida INT NOT NULL,
    mana INT NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES tb_classes(id)
);

ALTER TABLE tb_personagens 
ADD COLUMN poder_ataque INT NOT NULL,
ADD COLUMN poder_defesa INT NOT NULL 
AFTER mana;

ALTER TABLE tb_personagens MODIFY COLUMN poder_ataque INT NOT NULL AFTER mana;

SELECT * FROM tb_personagens;


INSERT INTO tb_personagens (nome, nivel, vida, mana, poder_ataque, poder_defesa, class_id) 
VALUES 
('Aragorn', 10, 10000, 1000, 2150, 2000, 1),
('Gimli', 8, 13000, 1000, 1700, 2500, 1),
('Legolas', 12, 10000, 1700, 2300, 2100, 4),
('Gandalf', 15, 12000, 2600, 3000, 1790, 4),
('Saruman', 14, 19000, 700, 500, 4000, 5),
('Radagast', 11, 11000, 1800, 1700, 1650, 2),
('Tinkerbell', 5, 9000, 4000, 2900, 1500, 3),
('Glitter', 6, 8500, 8000, 4500, 3000, 3);


SELECT * FROM tb_personagens where poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.*, tb_classes.classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.class_id = tb_classes.id;

SELECT tb_personagens.*, tb_classes.classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.class_id = tb_classes.id WHERE classe = 'Guerreiro';