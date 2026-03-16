-- =====================================================
-- EXERCÍCIOS SQL - SELECT SIMPLES
-- Banco: comercio
-- =====================================================

-- 1. Liste todos os registros da tabela clientes.
SELECT * FROM clientes;

-- 2. Liste todos os produtos cadastrados.
SELECT pro.produto FROM produtos pro;

-- 3. Mostre apenas os nomes dos clientes.
SELECT cli.nome FROM clientes cli;

-- 4. Liste os produtos mostrando apenas produto e preco.
SELECT pro.produto,pro.preco FROM produtos pro;

-- 5. Mostre todas as categorias cadastradas.
SELECT cat.categoria FROM categorias cat;

-- 6. Liste todos os pedidos registrados.
SELECT ped.pedido FROM pedidos ped;

-- 7. Liste todas as formas de pagamento registradas.
SELECT pag.descricao AS forma FROM rec_formapag pag;

-- 8. Mostre todas as cidades cadastradas na tabela endereços.
SELECT end.cidade FROM enderecos end;

-- 9. Liste todos os itens de pedidos.
SELECT ite.descricaoitem FROM os_item ite;

-- 10. Mostre todos os produtos ordenados por preço.
SELECT pro.FROM ORDER BY ;

-- =====================================================
-- EXERCÍCIOS COM WHERE
-- =====================================================

-- 11. Liste os clientes que moram em São Paulo.

-- 12. Liste os produtos com preço maior que 500.

-- 13. Liste os produtos com preço menor que 200.

-- 14. Mostre os pedidos emitidos em 2025-01-10.

-- 15. Liste os pagamentos feitos com Pix.

-- 16. Liste os clientes que moram em Curitiba.

-- 17. Liste produtos com preço entre 200 e 1000.

-- 18. Liste produtos com preço igual a 900.

-- 19. Liste pedidos cujo total seja maior que 1000.

-- 20. Liste pagamentos cujo valorpago seja maior que 500.

-- =====================================================
-- EXERCÍCIOS COM ORDER BY
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
-- =====================================================

-- 41. Liste todas as cidades sem repetição da tabela clientes.

-- 42. Liste todas as formas de pagamento diferentes registradas.

-- 43. Liste todas as datas de emissão de pedidos.

-- 44. Liste todos os valores de total dos pedidos.

-- 45. Liste todas as quantidades registradas em ped_itens.

-- =====================================================
-- EXERCÍCIOS COM LIKE
-- =====================================================

-- 46. Liste clientes cujo nome começa com a letra C.

-- 47. Liste produtos que possuem a palavra Gamer no nome.

-- 48. Liste clientes cujo email contém a palavra email.

-- 49. Liste produtos cujo nome termina com HD.

-- 50. Liste clientes cujo nome contém Silva.