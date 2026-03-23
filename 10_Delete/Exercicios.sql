-- =====================================================
-- EXERCÍCIOS COM DELETE
-- Banco: comercio
-- =====================================================

-- 171. Delete todos os clientes que não têm nenhum pedido registrado.

-- 172. Delete os produtos que nunca foram vendidos (não aparecem na tabela ped_itens).

-- 173. Delete todos os pagamentos com valor pago igual a 0.00 (ou valorpago <= 0).

-- 174. Delete os pedidos emitidos antes de uma data específica (ex.: antes de 2023-01-01).

-- 175. Delete os itens de pedido (ped_itens) de um pedido específico (escolha um idpedido que você sabe que existe).

-- 176. Delete todos os clientes cujo nome contenha 'Teste' ou 'demo' (útil para limpar dados de teste).

-- 177. Delete as categorias que não possuem nenhum produto associado.

-- 178. Delete os pagamentos feitos com a forma 'Dinheiro' e valor pago menor que R$ 50,00.

-- 179. Delete os produtos cujo preço unitário seja menor que R$ 10,00 e que nunca foram vendidos.

-- 180. Delete o pedido mais antigo do banco (o com a menor data de emissao).

-- 181. Delete todos os itens de pedido que contenham a palavra 'Gamer' no nome do produto (use subquery com LIKE).

-- 182. Delete os clientes que gastaram menos que R$ 100,00 no total em todos os pedidos (use subquery com SUM).

-- 183. Delete os pedidos que não possuem nenhum item associado em ped_itens (pedidos vazios/orfãos).

-- 184. Delete os 5 pagamentos mais antigos (ordenados por datapagamento ASC, use LIMIT).

-- 185. Delete os produtos da categoria com menor número de vendas (primeiro identifique a categoria com menor soma de quantidade vendida via subquery, depois delete os produtos dela).
