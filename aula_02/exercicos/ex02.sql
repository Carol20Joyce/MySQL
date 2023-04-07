CREATE DATABASE db_ex02;

USE db_ex02;

CREATE TABLE tb_ecommerce(
id bigint AUTO_INCREMENT,
cliente varchar(255) NOT NULL,
pagamento varchar(255) NOT NULL,
preco int,
email varchar(255) NOT NULL,
nproduto int,
PRIMARY KEY (id)
);

INSERT INTO tb_ecommerce(cliente, pagamento, preco, email, nproduto)
VALUES ("Joyce","Pix", 150, "caroline@gmail.com", 1500);
INSERT INTO tb_ecommerce(cliente, pagamento, preco, email, nproduto)
VALUES ("Guilherme", "Débito", 200, "guilherme@gmail.com", 300);
INSERT INTO tb_ecommerce(cliente, pagamento, preco, email, nproduto)
VALUES ("Queren", "Boleto", 600, "queren@gmail.com", 80);
INSERT INTO tb_ecommerce(cliente, pagamento, preco, email, nproduto)
VALUES ("João", "Crédito", 100,"guilherme@gmail.com", 01);
INSERT INTO tb_ecommerce(cliente, pagamento, preco, email, nproduto)
VALUES ("Laís", "A vista", 800,"lais@gmail.com", 75);
INSERT INTO tb_ecommerce(cliente, pagamento, preco, email, nproduto)
VALUES ("Jeniffer", "Dinheiro", 460,"lais@gmail.com", 30);

SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE preco > 500;

SELECT * FROM tb_ecommerce WHERE preco < 500;

UPDATE tb_ecommerce SET pagamento = "Débito" WHERE id = 6;

