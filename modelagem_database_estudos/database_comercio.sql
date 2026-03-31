CREATE DATABASE comercio;
USE comercio;

CREATE TABLE categorias (
             idcategoria INT AUTO_INCREMENT PRIMARY KEY
            ,descricao   VARCHAR(100)
);

CREATE TABLE produtos (
             idproduto     INT AUTO_INCREMENT PRIMARY KEY
            ,produto       VARCHAR(100)
            ,precounitario DECIMAL(10,2)
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

INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Notebook Dell',4500,2);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Mouse Gamer',150,4);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Teclado Mecânico',320,4);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Monitor 24',900,2);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Smartphone Samsung',2800,3);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Smartphone Xiaomi',2200,3);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Headset Gamer',450,4);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Webcam HD',280,2);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'SSD 1TB',600,2);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'HD 2TB',420,2);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Cadeira Gamer',1200,9);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Mesa Escritório',750,9);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Luminária LED',90,9);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Livro SQL Avançado',120,5);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Livro Python',110,5);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Tênis Running',350,7);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Camiseta Esportiva',90,6);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Relógio Smart',650,8);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Caixa de Som Bluetooth',220,1);
INSERT INTO produtos (idproduto,produto,precounitario,id_categoria) 
VALUES (NULL,'Fone Bluetooth',180,1);

INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,1,'2025-01-10',4650);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,2,'2025-01-11',150);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,3,'2025-01-12',1220);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,4,'2025-01-13',2800);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,5,'2025-01-14',350);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,6,'2025-01-15',220);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,7,'2025-01-16',780);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,8,'2025-01-17',600);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,9,'2025-01-18',420);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,10,'2025-01-19',320);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,11,'2025-01-20',900);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,12,'2025-01-21',120);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,13,'2025-01-22',110);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,14,'2025-01-23',450);
INSERT INTO pedidos (idpedido,id_cliente,emissao,total) 
VALUES (NULL,15,'2025-01-24',260);

INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,1,1,1,4500);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,1,2,1,150);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,2,2,1,150);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,3,11,1,1200);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,3,13,1,20);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,4,5,1,2800);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,5,16,1,350);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,6,19,1,220);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,7,4,1,900);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,7,20,1,180);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,8,9,1,600);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,9,10,1,420);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,10,3,1,320);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,11,4,1,900);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,12,14,1,120);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,13,15,1,110);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,14,7,1,450);
INSERT INTO ped_itens (iditem,id_pedido,id_produto,quantidade,valor) 
VALUES (NULL,15,17,2,180);

INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,1,'Cartão',4650,'2025-01-10');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,2,'Pix',150,'2025-01-11');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,3,'Cartão',1220,'2025-01-12');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,4,'Boleto',2800,'2025-01-13');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,5,'Pix',350,'2025-01-14');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,6,'Cartão',220,'2025-01-15');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,7,'Pix',780,'2025-01-16');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,8,'Boleto',600,'2025-01-17');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,9,'Cartão',420,'2025-01-18');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,10,'Pix',320,'2025-01-19');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,11,'Cartão',900,'2025-01-20');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,12,'Pix',120,'2025-01-21');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,13,'Cartão',110,'2025-01-22');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,14,'Pix',450,'2025-01-23');
INSERT INTO pagamentos (idpagamento,id_pedido,forma,valorpago,datapagamento) 
VALUES (NULL,15,'Boleto',260,'2025-01-24');

/*Script testado no MySQL Workbench, ainda vou acrescentar a tabela notas fiscais, mas no momento estou fazendo alguns
exercícios que não dependem dela, sinta-se a vontade para criá-la e estudar do seu jeito.*/