-- =====================================================
-- EXERCÍCIOS COM WHERE
-- Banco: comercio
-- =====================================================

-- 1. Liste os clientes que moram em São Paulo.
SELECT idcliente,nome,cidade
FROM   clientes
WHERE  cidade = 'São Paulo';

-- 2. Liste os produtos com preço maior que 500.
SELECT idproduto,produto,precounitario
FROM   produtos
WHERE  precounitario > 500.00;

-- 3. Liste os produtos com preço menor que 200.
SELECT idproduto,produto,precounitario
FROM   produtos
WHERE  precounitario < 200.00;

-- 4. Mostre os pedidos emitidos em 2025-01-10.
SELECT idpedido,id_cliente,emissao
FROM   pedidos
WHERE  emissao = '2025-01-10';

-- 5. Liste os pagamentos feitos com Pix.
SELECT idpagamento,forma 
FROM   pagamentos
WHERE  forma = 'Pix';

-- 6. Liste os clientes que moram em Curitiba.
SELECT idcliente,nome,cidade
FROM   clientes
WHERE  cidade = 'Curtiba';

-- 7. Liste produtos com preço entre 200 e 1000.
SELECT idproduto,produto,precounitario
FROM   produtos
WHERE  precounitario BETWEEN 200.00 AND 1000.00;

-- 8. Liste produtos com preço igual a 900.
SELECT idproduto,produto,precounitario
FROM   produtos
WHERE  precounitario = 900.00;

-- 9. Liste pedidos cujo total seja maior que 1000.
SELECT idpedido,id_cliente,total
FROM   pedidos
WHERE  total > 1000.00;

-- 10. Liste pagamentos cujo valorpago seja maior que 500.
SELECT idpagamento,id_pedido,forma,valorpago
FROM   pagamentos
WHERE  valorpago > 500.00;
