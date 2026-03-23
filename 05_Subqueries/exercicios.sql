-- =====================================================
-- EXERCÍCIOS COM SUBQUERIES
-- Banco: comercio
-- =====================================================

-- 156. Liste todos os clientes cujo nome começa com 'A' e que fizeram pelo menos um pedido 
--      (use uma subquery para verificar se o cliente tem pedido).

-- 157. Mostre os produtos cujo preço unitário é maior que o preço médio de todos os produtos.

-- 158. Liste os pedidos cujo valor total é maior que o valor médio de todos os pedidos.

-- 159. Mostre os clientes que gastaram mais que a média geral de gastos por cliente 
--      (soma dos totais de pedidos por cliente > média de soma por cliente).

-- 160. Liste os produtos que nunca foram vendidos 
--      (use NOT IN com subquery que retorna todos os id_produto que aparecem em ped_itens).

-- 161. Mostre os 3 produtos mais caros da categoria que tem o maior preço médio de produtos.

-- 162. Liste os clientes que compraram o produto mais vendido do banco 
--      (primeiro encontre o id_produto mais vendido via subquery, depois use esse resultado).

-- 163. Mostre os pedidos que têm valor total maior que todos os pedidos feitos por clientes de Porto Alegre 
--      (use ALL em subquery).

-- 164. Liste os clientes que fizeram pedidos em mais de uma data diferente 
--      (use subquery correlacionada para contar datas distintas por cliente).

-- 165. Mostre os produtos cujo preço unitário é maior que o preço de pelo menos um produto da categoria 'Eletrônicos' 
--      (use ANY em subquery – ajuste o nome da categoria conforme seus dados).

-- 166. Liste os clientes que NÃO fizeram nenhum pagamento registrado 
--      (use NOT EXISTS com subquery correlacionada em pagamentos via pedidos).

-- 167. Mostre, para cada cliente, o valor do seu pedido mais caro 
--      (use subquery correlacionada no SELECT para encontrar MAX(total) por cliente).

-- 168. Liste os pedidos que foram pagos com valor total igual ao valor do pedido 
--      (subquery que soma valorpago por pedido e compara com total do pedido).

-- 169. Mostre as categorias que têm pelo menos um produto com preço acima da média geral de preços 
--      (use EXISTS com subquery correlacionada).

-- 170. Encontre os clientes cujo gasto total está entre o 25% mais alto dos clientes 
--      (use subquery para encontrar o percentil ou simplesmente o valor que separa o top 25% – versão simplificada com ORDER BY + LIMIT na subquery).
