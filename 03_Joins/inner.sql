-- =====================================================
-- EXERCÍCIOS COM INNER JOIN
-- Banco: comercio
-- =====================================================

-- 51. Liste o número do pedido e o nome do cliente de todos os pedidos realizados.
SELECT ped.idpedido
      ,cli.nome
FROM   clientes cli 
JOIN   pedidos  ped
  ON   cli.idcliente = ped.id_cliente;

-- 52. Mostre o nome do produto e a descrição da categoria de todos os produtos cadastrados.
SELECT pro.produto
      ,cat.descricao AS categoria
FROM   produtos   pro
JOIN   categorias cat
  ON   pro.id_categoria = cat.idcategoria
ORDER BY cat.descricao;

-- 53. Liste o número do pedido, data de emissão e nome do cliente, ordenado pela data mais recente primeiro.
SELECT   ped.idpedido
        ,cli.nome
        ,ped.emissao
FROM     pedidos  ped
JOIN     clientes cli
  ON     cli.idcliente = ped.id_cliente
ORDER BY ped.emissao ASC;

-- 54. Mostre o número do pedido, o nome do produto comprado e a quantidade para cada item de pedido.
SELECT ped.id_pedido
      ,pro.produto
      ,COUNT(ped.quantidade) AS qtd_comprada
FROM   ped_itens  ped
JOIN   produtos   pro
  ON   pro.idproduto = ped.id_produto
GROUP BY ped.id_pedido;


-- 55. Liste o nome do cliente, a cidade e o valor total de todos os pedidos que ele realizou.
SELECT   cli.nome
        ,cli.cidade
        ,SUM(total) AS total_gasto_em_pedidos
FROM     clientes cli
JOIN     pedidos  ped
  ON     ped.id_cliente = cli.idcliente
GROUP BY cli.idcliente
ORDER BY cli.nome;

-- 56. Mostre a descrição da categoria e o nome do produto, ordenados por categoria e depois por produto.
SELECT   pro.produto
        ,cat.descricao AS categoria
FROM     produtos   pro
JOIN     categorias cat
  ON     cat.idcategoria = pro.id_categoria
ORDER BY cat.descricao;

-- 57. 

-- 58. Mostre o nome do cliente e a data de emissão dos pedidos com valor total acima de R$ 1.000,00, ordenados do maior para o menor total.
SELECT cli.nome
      ,ped.emissao
      ,ped.total
      ,DENSE_RANK() OVER (ORDER BY ped.total DESC) as ranking --Função nova, lembrar de testar mais
FROM   clientes cli
JOIN   pedidos  ped
  ON   ped.id_cliente = cli.idcliente
WHERE  ped.total > 1000.00; -- Rever essa query

OU

SELECT cli.nome
      ,ped.emissao
      ,ped.total
      ,DENSE_RANK() OVER (PARTITION BY cli.nome ORDER BY ped.total DESC) as ranking --Função nova, lembrar de testar mais
FROM   clientes cli
JOIN   pedidos  ped
  ON   ped.id_cliente = cli.idcliente
WHERE  ped.total > 1000.00;

-- 59. Liste o nome do produto, o preço unitário e a quantidade vendida em cada item de pedido.
SELECT pro.produto
      ,pro.precounitario
      ,COUNT(ped.quantidade) AS quantidade_vendida 
FROM   produtos  pro
JOIN   ped_itens ped
  ON   ped.id_produto = pro.idproduto
GROUP BY pro.produto;

-- 60. Mostre o nome do cliente, a cidade e o número do pedido apenas para clientes que moram em Porto Alegre.
SELECT cli.nome
      ,cli.cidade
      ,ped.idpedido 
FROM   clientes cli
JOIN   pedidos  ped
  ON   ped.id_cliente = cli.idcliente
WHERE  cli.cidade = 'Porto Alegre';

-- 61. Liste a descrição da categoria e a quantidade de produtos cadastrados em cada categoria.
SELECT   cat.descricao    AS categoria
        ,COUNT(idproduto) AS produtos_na_categoria
FROM     categorias cat
JOIN     produtos   pro
  ON     pro.id_categoria = cat.idcategoria
GROUP BY cat.idcategoria;

-- 62. Mostre o nome do cliente e a soma total dos valores dos pedidos que ele fez, ordenado do maior gastador para o menor.
SELECT cli.nome
      ,SUM(ped.total) AS Total_gasto  
FROM     clientes cli
JOIN     pedidos  ped
  ON     ped.id_cliente = cli.idcliente
GROUP BY cli.nome
ORDER BY 2 DESC;

-- 63. Liste o nome do produto, a categoria e o preço unitário apenas para produtos com preço acima de R$ 500,00, ordenados do mais caro para o mais barato.
SELECT   pro.produto
        ,cat.descricao
        ,pro.precounitario
FROM     produtos pro
JOIN     categorias cat
  ON     cat.idcategoria = pro.id_categoria
WHERE    pro.precounitario > 500.00
ORDER BY 3 DESC;

-- OU

SELECT   pro.produto
        ,cat.descricao
        ,pro.precounitario
        ,DENSE_RANK() OVER(ORDER BY precounitario DESC) AS Ranking
FROM     produtos pro
JOIN     categorias cat
  ON     cat.idcategoria = pro.id_categoria
WHERE    pro.precounitario > 500.00
ORDER BY 3 DESC;

-- 64. Mostre o número do pedido, o nome do cliente e a forma de pagamento usada em cada pedido pago.
SELECT ped.idpedido 
      ,cli.nome
      ,pag.forma
FROM   clientes   cli
JOIN   pedidos    ped
  ON   ped.id_cliente = cli.idcliente
JOIN   pagamentos pag
  ON   ped.idpedido = pag.id_pedido
ORDER BY 3,2;

-- 65. Liste os 5 produtos mais vendidos (considerando a soma da quantidade vendida em todos os itens), com o nome do produto e a quantidade total.
SELECT pro.produto
      ,SUM(ped.quantidade) AS quantidade_vendida 
FROM   produtos  pro
JOIN   ped_itens ped
  ON   ped.id_produto = pro.idproduto
GROUP BY pro.produto
ORDER BY 2 DESC
LIMIT 5;

-- LISTA AVANÇADA — JOIN + WINDOW FUNCTION
-- Nível 1 (entendimento + aplicação básica)
-- 66.Liste o nome do cliente, número do pedido, total do pedido e o ranking global dos pedidos por valor (do maior para o menor).

-- 67.Mostre o nome do cliente, número do pedido e total, junto com a média de valor dos pedidos daquele cliente.

-- 68.Liste o nome do produto, quantidade vendida e a quantidade média vendida daquele produto.

-- 69.Mostre o número do pedido, total e o valor do pedido anterior (ordenado por data).

-- 70.Liste o nome do cliente, número do pedido e total, e mostre a diferença entre o pedido atual e o anterior do mesmo cliente.

-- Nível 2 (começa a ficar interessante)
-- 71.Liste o nome do cliente, número do pedido e total, e mostre o ranking dos pedidos dentro de cada cliente.

-- 72.Mostre o nome do produto, categoria e preço, junto com o ranking de preço dentro da categoria.

-- 73.Liste os pedidos com total acima da média geral, mostrando também a média geral em cada linha.

-- 74.Mostre o nome do cliente e o total dos pedidos, junto com o percentual que cada pedido representa no total geral.

-- 75.Liste o nome do produto e a quantidade total vendida, junto com o percentual que cada produto representa do total vendido.

-- Nível 3 (nível analista de verdade)
-- 76.Mostre o nome do cliente, número do pedido e total, e traga apenas os 3 maiores pedidos de cada cliente.

-- 77.Liste os produtos e a quantidade vendida, mostrando o acumulado de vendas ao longo do tempo.

-- 78.Mostre o nome do cliente, número do pedido e total, e identifique se o pedido foi:
-- “MAIOR”
-- “MENOR”
-- “IGUAL”
-- em relação ao pedido anterior do mesmo cliente.

-- 79.Liste o nome do produto, categoria e preço, mostrando a diferença de preço para o produto anterior dentro da mesma categoria.

-- 80.Mostre o número do pedido, total e classifique cada pedido como:
-- “ACIMA DA MÉDIA”
-- “ABAIXO DA MÉDIA”
-- comparando com a média geral.