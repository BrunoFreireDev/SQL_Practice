-- =====================================================
-- EXERCÍCIOS SQL - SELECT SIMPLES
-- Banco: comercio
-- =====================================================

-- 1. Liste todos os registros da tabela clientes.
SELECT * 
FROM   clientes;

-- 2. Liste todos os produtos cadastrados.
SELECT * 
FROM   produtos;

-- 3. Mostre apenas os nomes dos clientes.
SELECT nome 
FROM   clientes;

-- 4. Liste os produtos mostrando apenas produto e preco.
SELECT produto
      ,precounitario 
FROM   produtos;

-- 5. Mostre todas as categorias cadastradas.
SELECT * 
FROM   categorias;

-- 6. Liste todos os pedidos registrados.
SELECT * 
FROM   pedidos;

-- 7. Mostre os produtos ordenados pelo preço.
SELECT   produto
        ,precounitario
FROM     produtos
ORDER BY precounitario;

-- 8. Liste os clientes mostrando nome e cidade.
SELECT nome
      ,cidade
FROM   clientes;

-- 9. Liste todos os pagamentos registrados.
SELECT * 
FROM   pagamentos;

-- 10. Liste os itens de pedido mostrando produto e quantidade.
SELECT id_pedido
      ,id_produto
      ,quantidade
FROM   ped_itens;

-- =====================================================
-- EXERCÍCIOS COM ORDER BY
-- Banco: comercio
-- =====================================================

-- 21. Liste todos os clientes ordenados por nome.
SELECT   nome
FROM     clientes
ORDER BY nome;

-- 22. Liste produtos ordenados por preço crescente.
SELECT   produto
        ,precounitario
FROM     produtos
ORDER BY precounitario;

-- 23. Liste produtos ordenados por preço decrescente.
SELECT   produto
        ,precounitario
FROM     produtos
ORDER BY precounitario DESC;

-- 24. Liste pedidos ordenados pela data de emissão.
SELECT   idpedido
        ,emissao
FROM     pedidos
ORDER BY emissao DESC; --Naturalmente apresenta a mais antiga primeiro, não é o que queremos

-- 25. Liste clientes ordenados pela cidade.
SELECT   nome
        ,cidade
FROM     clientes
ORDER BY cidade,nome;

-- 26. Liste pagamentos ordenados pela data de pagamento.
SELECT   idpagamento
        ,datapagamento
FROM     pagamentos
ORDER BY datapagamento;

-- 27. Liste produtos ordenados pelo nome.
SELECT   produto
FROM     produtos
ORDER BY produto;

-- 28. Liste pedidos ordenados pelo total do maior para o menor.
SELECT   idpedido
        ,total
FROM     pedidos
ORDER BY total DESC;

-- 29. Liste itens de pedido ordenados pela quantidade.
SELECT   id_pedido
        ,id_produto
        ,quantidade
FROM     ped_itens
ORDER BY quantidade DESC;

-- 30. Liste categorias ordenadas pela descrição.
SELECT   descricao
FROM     categorias
ORDER BY descricao;

-- =====================================================
-- EXERCÍCIOS COM LIMIT
-- Banco: comercio
-- =====================================================

-- 31. Mostre os 5 primeiros clientes cadastrados (considerando ordem de ID).
SELECT   *
FROM     clientes
ORDER BY idcliente ASC
LIMIT    5;

-- 32. Mostre os 3 produtos mais caros.
SELECT   idproduto, produto, precounitario
FROM     produtos
ORDER BY precounitario DESC
LIMIT    3;

-- 33. Mostre os 5 produtos mais baratos.
SELECT   idproduto, produto, precounitario
FROM     produtos
ORDER BY precounitario ASC
LIMIT    5;

-- 34. Mostre os 10 primeiros pedidos registrados (por ordem de cadastro).
SELECT   idpedido, id_cliente, emissao, total
FROM     pedidos
ORDER BY idpedido ASC
LIMIT    10;

-- 35. Mostre os 5 primeiros pagamentos registrados.
SELECT   idpagamento, id_pedido, forma, valorpago, datapagamento
FROM     pagamentos
ORDER BY idpagamento ASC
LIMIT    5;


-- =====================================================
-- EXERCÍCIOS COM CONDIÇÕES COMBINADAS
-- Banco: comercio
-- =====================================================

-- 36. Liste produtos com preço maior que 200 e menor que 1000.
--     (BETWEEN inclui os limites → se quiser estrito, use > e <)
SELECT   idproduto, produto, precounitario
FROM     produtos
WHERE    precounitario BETWEEN 200.00 AND 1000.00
ORDER BY precounitario;

-- 37. Liste clientes que moram em São Paulo ou Curitiba.
SELECT   nome, cidade, email
FROM     clientes
WHERE    cidade IN ('São Paulo', 'Curitiba')
ORDER BY cidade, nome;

-- 38. Liste pedidos com valor total maior que 500.
SELECT   idpedido, id_cliente, emissao, total
FROM     pedidos
WHERE    total > 500.00
ORDER BY total DESC;

-- 39. Liste pagamentos feitos com Cartão.
--     (verifique se a forma está exatamente como 'Cartão' ou 'cartao', 'Credito' etc.)
SELECT   idpagamento, id_pedido, forma, valorpago, datapagamento
FROM     pagamentos
WHERE    forma = 'Cartão';

-- 40. Liste produtos cujo preço seja maior que 300, ordenados pelo preço (crescente).
SELECT   idproduto, produto, precounitario
FROM     produtos
WHERE    precounitario > 300.00
ORDER BY precounitario ASC;


-- =====================================================
-- EXERCÍCIOS DE EXPLORAÇÃO DE DADOS
-- Banco: comercio
-- =====================================================

-- 41. Liste todas as cidades sem repetição da tabela clientes.
SELECT DISTINCT cidade
FROM   clientes
WHERE  cidade IS NOT NULL
ORDER BY cidade;

-- 42. Liste todas as formas de pagamento diferentes registradas.
SELECT DISTINCT forma
FROM   pagamentos
WHERE  forma IS NOT NULL
ORDER BY forma;

-- 43. Liste todas as datas de emissão de pedidos (mais recente primeiro).
SELECT DISTINCT emissao
FROM   pedidos
ORDER BY emissao DESC;

-- 44. Liste todos os valores de total dos pedidos, sem repetição, ordenados.
SELECT DISTINCT total
FROM   pedidos
ORDER BY total DESC;

-- 45. Liste todas as quantidades registradas em ped_itens (sem repetição).
SELECT DISTINCT quantidade
FROM   ped_itens
ORDER BY quantidade;


-- =====================================================
-- EXERCÍCIOS COM LIKE
-- Banco: comercio
-- =====================================================

-- 46. Liste clientes cujo nome começa com a letra C.
SELECT nome, cidade, email
FROM   clientes
WHERE  nome LIKE 'C%'
ORDER BY nome;

-- 47. Liste produtos que possuem a palavra 'Gamer' no nome (case insensitive em muitos SGBDs).
SELECT idproduto, produto, precounitario
FROM   produtos
WHERE  produto LIKE '%Gamer%'
ORDER BY produto;

-- 48. Liste clientes cujo email contém a palavra 'email'.
--     (se for email de teste, pode ser comum — ajuste o padrão se necessário)
SELECT nome, email, cidade
FROM   clientes
WHERE  email LIKE '%email%'
ORDER BY nome;

-- 49. Liste produtos cujo nome termina com 'HD'.
SELECT idproduto, produto, precounitario
FROM   produtos
WHERE  produto LIKE '%HD'
ORDER BY produto;

-- 50. Liste clientes cujo nome contém 'Silva'.
SELECT nome, cidade, email
FROM   clientes
WHERE  nome LIKE '%Silva%'
ORDER BY nome;