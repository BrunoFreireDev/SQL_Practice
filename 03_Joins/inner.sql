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
      ,RANK() OVER (ORDER BY ped.total DESC) as ranking --Função nova, lembrar de testar mais
FROM   clientes cli
JOIN   pedidos  ped
  ON   ped.id_cliente = cli.idcliente
WHERE  ped.total > 1000.00;

-- 59. Liste o nome do produto, o preço unitário e a quantidade vendida em cada item de pedido.

-- 60. Mostre o nome do cliente, a cidade e o número do pedido apenas para clientes que moram em Porto Alegre.

-- 61. Liste a descrição da categoria e a quantidade de produtos cadastrados em cada categoria.

-- 62. Mostre o nome do cliente e a soma total dos valores dos pedidos que ele fez, ordenado do maior gastador para o menor.

-- 63. Liste o nome do produto, a categoria e o preço unitário apenas para produtos com preço acima de R$ 500,00, ordenados do mais caro para o mais barato.

-- 64. Mostre o número do pedido, o nome do cliente e a forma de pagamento usada em cada pedido pago.

-- 65. Liste os 5 produtos mais vendidos (considerando a soma da quantidade vendida em todos os itens), com o nome do produto e a quantidade total.
