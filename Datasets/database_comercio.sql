--Crie o Banco de Dados:
CREATE DATABASE comercio;
USE comercio;

--Crie tabelas:
CREATE TABLE categorias (
             idcategoria INT AUTO_INCREMENT PRIMARY KEY
            ,descricao   VARCHAR(100)
);

CREATE TABLE produtos (
             idproduto INT AUTO_INCREMENT PRIMARY KEY
            ,produto       VARCHAR(100)
            ,preco         DECIMAL(10,2)
            ,id_categoria  INT

            ,FOREIGN KEY (id_categoria) REFERENCES categorias(idcategoria)
);

CREATE TABLE clientes (
             idcliente INT AUTO_INCREMENT PRIMARY KEY
            ,nome      VARCHAR(100)
            ,email     VARCHAR(120)
            ,cidade    VARCHAR(100)
);

CREATE TABLE pedidos (
             idpedido   INT AUTO_INCREMENT PRIMARY KEY
            ,id_cliente INT
            ,emissao    DATE
            ,total      DECIMAL(10,2)

            ,FOREIGN KEY (id_cliente) REFERENCES clientes(idcliente)
);

CREATE TABLE ped_itens (
             iditem         INT AUTO_INCREMENT PRIMARY KEY
            ,id_pedido      INT
            ,id_produto     INT
            ,quantidade     INT
            ,valor          DECIMAL(10,2)

            ,FOREIGN KEY (id_pedido)  REFERENCES pedidos(idpedido)
            ,FOREIGN KEY (id_produto) REFERENCES produtos(idproduto)
);

CREATE TABLE pagamentos (
             idpagamento   INT AUTO_INCREMENT PRIMARY KEY
            ,id_pedido     INT
            ,forma         VARCHAR(50)
            ,valorpago     DECIMAL(10,2)
            ,datapagamento DATE
    
            ,FOREIGN KEY (id_pedido) REFERENCES pedidos(idpedido)
);

--Popule elas:
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Eletrônicos');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Informática');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Celulares');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Games');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Livros');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Roupas');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Calçados');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Acessórios');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Casa');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Cozinha');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Ferramentas');
INSERT INTO categorias (idcategoria,descricao) 
VALUES (NULL,'Automotivo');

INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Carlos Silva','carlos@email.com','São Paulo');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Maria Souza','maria@email.com','Rio de Janeiro');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'João Pereira','joao@email.com','Curitiba');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Ana Costa','ana@email.com','Porto Alegre');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Pedro Lima','pedro@email.com','Belo Horizonte');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Lucas Alves','lucas@email.com','Campinas');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Fernanda Rocha','fernanda@email.com','Salvador');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Ricardo Gomes','ricardo@email.com','Florianópolis');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Juliana Martins','juliana@email.com','Brasília');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Bruno Carvalho','bruno@email.com','Fortaleza');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Patricia Melo','patricia@email.com','Recife');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'André Ribeiro','andre@email.com','Natal');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Camila Freitas','camila@email.com','Manaus');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Thiago Nunes','thiago@email.com','Belém');
INSERT INTO clientes (idcliente,nome,email,cidade) 
VALUES (NULL,'Vanessa Duarte','vanessa@email.com','Goiânia');

INSERT INTO produtos (produto,preco,id_categoria) VALUES
('Notebook Dell',4500,2),
('Mouse Gamer',150,4),
('Teclado Mecânico',320,4),
('Monitor 24',900,2),
('Smartphone Samsung',2800,3),
('Smartphone Xiaomi',2200,3),
('Headset Gamer',450,4),
('Webcam HD',280,2),
('SSD 1TB',600,2),
('HD 2TB',420,2),
('Cadeira Gamer',1200,9),
('Mesa Escritório',750,9),
('Luminária LED',90,9),
('Livro SQL Avançado',120,5),
('Livro Python',110,5),
('Tênis Running',350,7),
('Camiseta Esportiva',90,6),
('Relógio Smart',650,8),
('Caixa de Som Bluetooth',220,1),
('Fone Bluetooth',180,1);

INSERT INTO pedidos (id_cliente,emissao,total) VALUES
(1,'2025-01-10',4650),
(2,'2025-01-11',150),
(3,'2025-01-12',1220),
(4,'2025-01-13',2800),
(5,'2025-01-14',350),
(6,'2025-01-15',220),
(7,'2025-01-16',780),
(8,'2025-01-17',600),
(9,'2025-01-18',420),
(10,'2025-01-19',320),
(11,'2025-01-20',900),
(12,'2025-01-21',120),
(13,'2025-01-22',110),
(14,'2025-01-23',450),
(15,'2025-01-24',260);

INSERT INTO ped_itens (id_pedido,id_produto,quantidade,valor) VALUES
(1,1,1,4500),
(1,2,1,150),
(2,2,1,150),
(3,11,1,1200),
(3,13,1,20),
(4,5,1,2800),
(5,16,1,350),
(6,19,1,220),
(7,4,1,900),
(7,20,1,180),
(8,9,1,600),
(9,10,1,420),
(10,3,1,320),
(11,4,1,900),
(12,14,1,120),
(13,15,1,110),
(14,7,1,450),
(15,17,2,180);

INSERT INTO pagamentos (id_pedido,forma,valorpago,datapagamento) VALUES
(1,'Cartão',4650,'2025-01-10'),
(2,'Pix',150,'2025-01-11'),
(3,'Cartão',1220,'2025-01-12'),
(4,'Boleto',2800,'2025-01-13'),
(5,'Pix',350,'2025-01-14'),
(6,'Cartão',220,'2025-01-15'),
(7,'Pix',780,'2025-01-16'),
(8,'Boleto',600,'2025-01-17'),
(9,'Cartão',420,'2025-01-18'),
(10,'Pix',320,'2025-01-19'),
(11,'Cartão',900,'2025-01-20'),
(12,'Pix',120,'2025-01-21'),
(13,'Cartão',110,'2025-01-22'),
(14,'Pix',450,'2025-01-23'),
(15,'Boleto',260,'2025-01-24');