/*/*View é consulta pronta pra análise.

Regra de ouro:

Se parece relatório → é VIEW

Exemplo:

faturamento por cliente
produto mais vendido
pedidos pendentes

Se tiver GROUP BY, JOIN, agregação → tá no caminho certo.*/
*/

--=====================================================
-- EXERCÍCIOS COM VIEWS
-- Banco: comercio
--=====================================================

-- 201. Crie uma view que liste todos os clientes com seus pedidos.

-- 202. Crie uma view que mostre os produtos e suas categorias.

-- 203. Crie uma view com o total de vendas por produto.

-- 204. Crie uma view com o total de vendas por cliente.

-- 205. Crie uma view com os pedidos e seus respectivos valores totais.

-- 206. Crie uma view que mostre apenas os produtos que já foram vendidos.

-- 207. Crie uma view com os produtos que nunca foram vendidos.

-- 208. Crie uma view que mostre os pagamentos realizados com seus pedidos.

-- 209. Crie uma view com o faturamento por mês.

-- 210. Crie uma view com os 5 produtos mais vendidos.

-- 211. Crie uma view com os clientes que mais compraram (ordenado por total gasto).

-- 212. Crie uma view com os pedidos que possuem mais de 3 itens.

-- 213. Crie uma view que mostre o ticket médio dos pedidos.

-- 214. Crie uma view que liste os pedidos sem pagamento registrado.

-- 215. Crie uma view com produtos com estoque baixo (ex.: menor que 10 unidades).

-- 246. Crie uma view com:
-- cliente + total gasto + quantidade de pedidos

-- 247. Crie uma view com:
-- produto + total vendido + quantidade vendida

-- 248. Crie uma view com:
-- categoria + faturamento total

-- 249. Crie uma view com:
-- pedidos + status (Pago / Pendente baseado em pagamentos)

-- 250. Crie uma view com:
-- pedidos + diferença entre total e valor pago

-- 251. Crie uma view com:
-- produtos mais vendidos por categoria

-- 252. Crie uma view com:
-- clientes que nunca compraram

-- 253. Crie uma view com:
-- produtos com preço acima da média geral

-- 254. Crie uma view com:
-- média de valor por pedido por cidade

-- 255. Crie uma view com:
-- top 3 cidades com maior faturamento

-- 256. Crie uma view com:
-- pedidos com mais de um item

-- 257. Crie uma view com:
-- produtos com baixa rotatividade (pouco vendidos)

-- 258. Crie uma view com:
-- pedidos feitos por dia

-- 259. Crie uma view com:
-- forma de pagamento + total movimentado

-- 260. Crie uma view com:
-- produtos nunca vendidos (anti-join)