-- =====================================================
-- EXERCÍCIOS SQL - SELECT SIMPLES
-- Banco: comercio
-- =====================================================

-- 1. Liste todos os registros da tabela clientes.
SELECT * FROM clientes;

-- 2. Liste todos os produtos cadastrados.
SELECT * FROM produtos;

-- 3. Mostre apenas os nomes dos clientes.
SELECT nome FROM clientes;

-- 4. Liste os produtos mostrando apenas produto e preco.
SELECT produto, preco FROM produtos;

-- 5. Mostre todas as categorias cadastradas.
SELECT * FROM categorias;

-- 6. Liste todos os pedidos registrados.
SELECT * FROM pedidos;

-- 7. Mostre os produtos ordenados pelo preço.
SELECT produto, preco
FROM produtos
ORDER BY preco;

-- 8. Liste os clientes mostrando nome e cidade.
SELECT nome, cidade
FROM clientes;

-- 9. Liste todos os pagamentos registrados.
SELECT * FROM pagamentos;

-- 10. Liste os itens de pedido mostrando produto e quantidade.
SELECT id_pedido, id_produto, quantidade
FROM ped_itens;

-- =====================================================
-- EXERCÍCIOS COM ORDER BY
-- Banco: comercio
-- =====================================================

-- 21. Liste todos os clientes ordenados por nome.

-- 22. Liste produtos ordenados por preço crescente.

-- 23. Liste produtos ordenados por preço decrescente.

-- 24. Liste pedidos ordenados pela data de emissão.

-- 25. Liste clientes ordenados pela cidade.

-- 26. Liste pagamentos ordenados pela data de pagamento.

-- 27. Liste produtos ordenados pelo nome.

-- 28. Liste pedidos ordenados pelo total do maior para o menor.

-- 29. Liste itens de pedido ordenados pela quantidade.

-- 30. Liste categorias ordenadas pela descrição.

-- =====================================================
-- EXERCÍCIOS COM LIMIT
-- Banco: comercio
-- =====================================================

-- 31. Mostre os 5 primeiros clientes cadastrados.

-- 32. Mostre os 3 produtos mais caros.

-- 33. Mostre os 5 produtos mais baratos.

-- 34. Mostre os 10 primeiros pedidos registrados.

-- 35. Mostre os 5 primeiros pagamentos registrados.

-- =====================================================
-- EXERCÍCIOS COM CONDIÇÕES COMBINADAS
-- =====================================================

-- 36. Liste produtos com preço maior que 200 e menor que 1000.

-- 37. Liste clientes que moram em São Paulo ou Curitiba.

-- 38. Liste pedidos com valor total maior que 500.

-- 39. Liste pagamentos feitos com Cartão.

-- 40. Liste produtos cujo preço seja maior que 300, ordenados pelo preço.

-- =====================================================
-- EXERCÍCIOS DE EXPLORAÇÃO DE DADOS
-- Banco: comercio
-- =====================================================

-- 41. Liste todas as cidades sem repetição da tabela clientes.

-- 42. Liste todas as formas de pagamento diferentes registradas.

-- 43. Liste todas as datas de emissão de pedidos.

-- 44. Liste todos os valores de total dos pedidos.

-- 45. Liste todas as quantidades registradas em ped_itens.

-- =====================================================
-- EXERCÍCIOS COM LIKE
-- Banco: comercio
-- =====================================================

-- 46. Liste clientes cujo nome começa com a letra C.

-- 47. Liste produtos que possuem a palavra Gamer no nome.

-- 48. Liste clientes cujo email contém a palavra email.

-- 49. Liste produtos cujo nome termina com HD.

-- 50. Liste clientes cujo nome contém Silva.