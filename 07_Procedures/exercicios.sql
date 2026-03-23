/*Pensa sempre assim:

Entrada → Processamento → Saída

Exemplo real do teu banco:

👉 “Recalcular total do pedido”

Checklist mental:

Entrada: idpedido
Processamento: SUM(ped_itens.valor)
Saída: UPDATE pedidos.total

Se você não fizer isso estruturado, vira gambiarra.*/

--=====================================================+
-- EXERCÍCIOS COM PROCEDURES                           |
-- Banco: comercio                                     |
--=====================================================+

-- 186. Crie uma procedure que retorne todos os clientes cadastrados.

-- 187. Crie uma procedure que receba um idcliente e retorne os dados desse cliente.

-- 188. Crie uma procedure que receba um idpedido e retorne todos os itens desse pedido.

-- 189. Crie uma procedure que receba uma data inicial e final e retorne os pedidos nesse período.

-- 190. Crie uma procedure que calcule o total gasto por um cliente (recebendo idcliente).

-- 191. Crie uma procedure que insira um novo cliente na tabela clientes.

-- 192. Crie uma procedure que atualize o nome de um cliente com base no idcliente.

-- 193. Crie uma procedure que delete um cliente pelo idcliente.

-- 194. Crie uma procedure que retorne os produtos com preço acima de um valor informado.

-- 195. Crie uma procedure que retorne o total de pedidos realizados por um cliente.

-- 196. Crie uma procedure que insira um novo pedido e seus itens (use transação).

-- 197. Crie uma procedure que retorne o produto mais vendido.

-- 198. Crie uma procedure que retorne o faturamento total da empresa.

-- 199. Crie uma procedure que aplique um desconto percentual em todos os produtos.

-- 200. Crie uma procedure que liste os clientes que não fizeram nenhum pedido.

-- 231. Crie uma procedure que recalcula o total de um pedido somando os valores de ped_itens.

-- 232. Crie uma procedure que receba idpedido e retorne:
-- - total de itens
-- - valor total
-- - quantidade de produtos diferentes

-- 233. Crie uma procedure que receba idcliente e retorne o ticket médio dos pedidos dele.

-- 234. Crie uma procedure que insira um pedido com múltiplos itens (simulando carrinho).

-- 235. Crie uma procedure que cancele um pedido (deletando itens, pagamentos e o pedido).

-- 236. Crie uma procedure que retorne os produtos mais vendidos por categoria.

-- 237. Crie uma procedure que identifique clientes inativos (sem pedidos nos últimos X dias).

-- 238. Crie uma procedure que retorne o faturamento por cidade.

-- 239. Crie uma procedure que aplique aumento de preço apenas para uma categoria específica.

-- 240. Crie uma procedure que retorne os pedidos que estão com pagamento inconsistente
-- (total != soma dos pagamentos).

-- 241. Crie uma procedure que gere um ranking de clientes por valor gasto.

-- 242. Crie uma procedure que mova produtos de uma categoria para outra.

-- 243. Crie uma procedure que retorne os produtos com maior margem de venda
-- (simule custo = 70% do preço).

-- 244. Crie uma procedure que limpe dados órfãos (pedidos sem itens).

-- 245. Crie uma procedure que retorne estatísticas gerais:
-- - total de clientes
-- - total de pedidos
-- - faturamento total