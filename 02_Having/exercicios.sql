/*Dicas rápidas para esses exercícios:

Sempre use GROUP BY na coluna(s) que você está agrupando (ex.: cidade, nome do cliente, forma, etc.).
O HAVING vem depois do GROUP BY e filtra os grupos (não as linhas individuais).
HAVING pode usar funções de agregação (SUM(total) > 2000, COUNT(*) > 3, AVG(total) > 800, etc.).
Quando precisar de média por grupo, use AVG() no HAVING ou no SELECT.
Para contagem distinta, use COUNT(DISTINCT coluna).
Para datas/meses, use funções como DATE_FORMAT(emissao, '%Y-%m') ou CONCAT(YEAR(emissao), '-', LPAD(MONTH(emissao), 2, '0')).*/


-- =====================================================
-- EXERCÍCIOS COM GROUP BY + HAVING
-- Banco: comercio
-- =====================================================

-- 141. Mostre as cidades que têm mais de 3 clientes cadastrados (nome da cidade e contagem).
SELECT   cidade
        ,COUNT(DISTINCT idcliente) AS total
FROM     clientes
GROUP BY cidade
HAVING   COUNT(DISTINCT idcliente) > 3;

-- Correção: (pk sempre será distinta)
SELECT   cidade,
         COUNT(idcliente) AS total
FROM     clientes
GROUP BY cidade
HAVING   COUNT(idcliente) > 3;

-- 142. Liste os clientes que fizeram mais de 2 pedidos (nome do cliente e quantidade de pedidos).
SELECT   cli.nome
        ,SUM(ped.idpedido) AS quantidade_total
FROM     clientes  cli
JOIN     pedidos   ped
  ON     ped.id_cliente = cli.idcliente
GROUP BY cli.nome
HAVING   SUM(ped.idpedido) > 2
ORDER BY cli.nome;

-- 143. Mostre as categorias que possuem mais de 5 produtos cadastrados (descrição da categoria e contagem de produtos).
SELECT    cat.descricao
         ,COUNT(pro.idproduto) AS produtos
FROM      categorias cat
JOIN      produtos   pro
  ON      cat.idcategoria = pro.id_categoria
GROUP BY  cat.descricao
HAVING    COUNT(pro.produto) > 5
ORDER BY  cat.descricao;

-- 144. Liste as formas de pagamento que foram usadas em mais de 4 pagamentos (forma e contagem).
SELECT   forma        AS "Formas de pagamento"
        ,COUNT(forma) AS "Vezes usada"
FROM     pagamentos
GROUP BY forma
HAVING   COUNT(forma) > 4;

-- 145. Mostre os pedidos que tiveram mais de 5 itens diferentes (número do pedido e contagem distinta de produtos).
SELECT   ped.id_pedido AS "Pedido"
        ,COUNT(DISTINCT ped.id_produto) AS "Produtos diferentes no pedido"
FROM     ped_itens ped
GROUP BY ped.id_pedido
HAVING   COUNT(DISTINCT ped.id_produto) > 5; 

-- 146. Liste os clientes cujo total gasto em pedidos é maior que R$ 2.000,00 (nome e soma dos totais).
SELECT   cli.nome       AS "Cliente"
        ,SUM(ped.total) AS "Total gasto em pedidos"
FROM     clientes cli
JOIN     pedidos ped
  ON     cli.idcliente = ped.id_cliente
GROUP BY cli.idcliente
HAVING   SUM(ped.total) > 2000.00;

-- 147. Mostre os produtos que foram vendidos mais de 10 vezes no total (nome do produto e contagem de linhas em ped_itens).
SELECT   pro.produto
        ,COUNT(ped.id_produto) AS "Quantidade vendida"
FROM     produtos pro
JOIN     ped_itens ped
  ON     ped.id_produto = pro.idproduto
GROUP BY pro.produto
HAVING   COUNT(ped.id_produto) > 10;

-- 148. Liste os meses (ano e mês) em que foram emitidos mais de 5 pedidos (ex.: '2024-05' e contagem).
SELECT    EXTRACT(YEAR FROM emissao) || '/' || EXTRACT(MONTH FROM emissao) AS Período
         ,COUNT(idpedido)
FROM      pedidos
GROUP BY  EXTRACT(YEAR FROM emissao) || '/' || EXTRACT(MONTH FROM emissao)
HAVING    COUNT(idpedido) > 5;
/*O '||' não concatena no MySQL, então lembre de usar CONCAT() e não errar que nem eu*/

-- Correção:
SELECT    CONCAT(EXTRACT(YEAR FROM emissao),'/', EXTRACT(MONTH FROM emissao)) AS Período
         ,COUNT(idpedido) AS "Quantidade de pedidos no período"
FROM      pedidos
GROUP BY  CONCAT(EXTRACT(YEAR FROM emissao),'/', EXTRACT(MONTH FROM emissao))
HAVING    COUNT(idpedido) > 5;

-- 149. Mostre as categorias cujo preço médio dos produtos é maior que R$ 300,00 (descrição e média de precounitario).


-- 150. Liste os clientes que compraram em mais de 2 datas diferentes (nome e contagem distinta de emissao).

-- 151. Mostre os produtos cuja quantidade total vendida é maior que 20 unidades (nome do produto e soma de quantidade).

-- 152. Liste as cidades cujo total de vendas (soma dos pedidos dos clientes daquela cidade) é maior que R$ 5.000,00.

-- 153. Mostre os pedidos cujo valor total é maior que a média geral dos pedidos (número do pedido e total).

-- 154. Liste as formas de pagamento cujo valor total pago com aquela forma é maior que R$ 1.000,00 (forma e soma de valorpago).

-- 155. Mostre os clientes que gastaram em média mais de R$ 800,00 por pedido (nome do cliente, contagem de pedidos e média do total por pedido).