CREATE DATABASE db_atv01;

USE db_atv01;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
favorito varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (descricao, favorito)
VALUES ("Assassinos", "Sim");

INSERT INTO tb_classes (descricao, favorito)
VALUES ("Lutadores", "Sim");

INSERT INTO tb_classes (descricao, favorito)
VALUES ("Magos", "Não");

INSERT INTO tb_classes (descricao, favorito)
VALUES ("Atiradores", "Sim");

INSERT INTO tb_classes (descricao, favorito)
VALUES ("Suporte", "Não");

INSERT INTO tb_classes (descricao, favorito)
VALUES ("Tanques", "Sim");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
vida int,
dano int,
velocidade int,
armadura int,
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Warwick", 3000, 520, 120, 500, 2);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Miss Fortune", 4000, 280, 350, 240, 4);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Yasuo", 3500, 300, 250, 200, 1);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Seraphine", 4500, 400, 150, 120, 5);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Volibear", 5000, 520, 120, 380, 6);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Nami", 3500, 380, 110, 270, 3);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Jinx", 3000, 480, 350, 120, 4);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Senna", 2000, 220, 280, 110, 4);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Evelynn", 4800, 550, 480, 370, 1);

INSERT INTO tb_personagens(nome, vida, dano, velocidade, armadura, classes_id)
VALUES ("Mordekaiser", 5200, 600, 320, 500, 2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE vida > 2000;

SELECT * FROM tb_personagens WHERE velocidade >= 100 AND velocidade <= 300;

SELECT * FROM tb_personagens  WHERE nome LIKE "%i%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.descricao = "Assassinos" ORDER BY nome;