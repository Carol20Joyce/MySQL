CREATE DATABASE db_ex03;

USE db_ex03;

CREATE TABLE tb_estudante(
id bigint AUTO_INCREMENT,
aluno varchar(255) NOT NULL,
idade int,
nota decimal(6,2),
repetiudeano varchar(255) NOT NULL,
email varchar(255) NOT NULL,
PRIMARY KEY (id)
); 

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("Joyce", 12, 8.00, "1 ano", "caroline@gmail.com");

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("Guilherme", 15, 5.00, "Não","guilherme@gmail.com");

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("Queren", 11, 7.20, "Não","queren@gmail.com");

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("João", 17, 4.50, "2 anos", "guilherme@gmail.com");

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("Laís", 10, 9.00, "Não", "lais@gmail.com");

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("Jeniffer", 14, 6.00, "Não", "jeniffer@gmail.com");

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("Julia", 13, 2.00, "Não", "julia@gmail.com");

INSERT INTO tb_estudante(aluno, idade, nota, repetiudeano, email)
VALUES ("Mariana", 15, 6.00, "1 ano", "mariana@gmail.com");

SELECT * FROM tb_estudante;

SELECT * FROM tb_estudante WHERE nota > 7.0;

SELECT * FROM tb_estudante WHERE nota < 7.0;

UPDATE tb_estudante SET nota = 7.0 WHERE id = 6;