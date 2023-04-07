CREATE DATABASE db_ex01;

USE db_ex01;

CREATE TABLE tb_rh(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
cargo varchar(255) NOT NULL,
email varchar(255) NOT NULL,
salario int,
PRIMARY KEY (id)
);

INSERT INTO tb_rh(nome, idade, cargo, email, salario)
VALUES ("Joyce", 20, "QA", "caroline@gmail.com", 1500);
INSERT INTO tb_rh(nome, idade, cargo, email, salario)
VALUES ("Guilherme", 22, "DEV", "guilherme@gmail.com", 2000);
INSERT INTO tb_rh(nome, idade, cargo, email, salario)
VALUES ("Queren", 22, "Especialista", "queren@gmail.com", 8000);
INSERT INTO tb_rh(nome, idade, cargo, email, salario)
VALUES ("João", 28, "Supervisor", "guilherme@gmail.com", 10000);
INSERT INTO tb_rh(nome, idade, cargo, email, salario)
VALUES ("Laís", 25, "Especialista", "lais@gmail.com", 7500);

SELECT * FROM tb_rh;

SELECT * FROM tb_rh WHERE salario > 2000;

SELECT * FROM tb_rh WHERE salario < 2000;

UPDATE tb_rh SET salario = 3000 WHERE id = 1;