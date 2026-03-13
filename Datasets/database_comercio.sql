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

    FOREIGN KEY (id_categoria) REFERENCES categorias(idcategoria)
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

    FOREIGN KEY (id_cliente) REFERENCES clientes(idcliente)
);

CREATE TABLE ped_itens (
             iditem         INT AUTO_INCREMENT PRIMARY KEY
            ,id_pedido      INT
            ,id_produto     INT
            ,quantidade     INT
            ,valor          DECIMAL(10,2)

    FOREIGN KEY (id_pedido)  REFERENCES pedidos(idpedido)
   ,FOREIGN KEY (id_produto) REFERENCES produtos(idproduto)
);

CREATE TABLE pagamentos (
    idpagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    forma VARCHAR(50),
    valorpago DECIMAL(10,2),
    datapagamento DATE,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);