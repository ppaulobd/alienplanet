CREATE DATABASE planetalien;

USE planetalien;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (70) NULL,
    apelido VARCHAR (80) NOT NULL,
    email VARCHAR (88) NOT NULL,
    senha nchar(8) NOT NULL
);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Pedro","ppaulozyzz","pedro@teste.com.br",12345678);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Pedro","ppaulozyzz","pedro@teste.com.br",12345678);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Jose","josue","jose@teste.com.br",12345678);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("maria","ma","maria@teste.com.br",12345679);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Josi","josi","josi@teste.com.br",12345679);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Vagner","Vagnao","vagner@teste.com.br",12345679);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Otavio","otav","otavio@teste.com.br",12345679);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Josivaldo","valdo","josivaldo@teste.com.br",12345679);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Mario","Bigode","mario@teste.com.br",12345679);

INSERT INTO usuario  (nome,apelido,email,senha)
VALUES("Luide","lu","luidi@teste.com.br",12345679);

SELECT COUNT(nome) AS quantidade FROM usuario;


select*from usuario;

select apelido,senha from usuario;

ALTER TABLE usuario
ADD CONSTRAINT email_unique UNIQUE (email);

DELETE FROM usuario
WHERE id = 4;

ALTER TABLE usuario DROP INDEX email_unique;

CREATE TABLE usuario_temp AS SELECT * FROM usuario;

TRUNCATE TABLE usuario;

INSERT INTO usuario SELECT*FROM usuario_temp;

DROP DATABASE planetalien;