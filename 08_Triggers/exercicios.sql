--=====================================================
-- EXERCÍCIOS COM TRIGGERS
-- Banco: comercio
--=====================================================

-- 216. Crie uma trigger que, ao inserir um pedido, registre automaticamente a data atual se não for informada.

-- 217. Crie uma trigger que, ao inserir um item de pedido, atualize o estoque do produto.

-- 218. Crie uma trigger que impeça a inserção de produtos com preço negativo.

-- 219. Crie uma trigger que, ao deletar um cliente, delete também seus pedidos (cascade manual).

-- 220. Crie uma trigger que, ao inserir um pagamento, atualize o status do pedido para 'Pago'.

-- 221. Crie uma trigger que impeça a exclusão de produtos que já foram vendidos.

-- 222. Crie uma trigger que, ao atualizar o preço de um produto, registre o valor antigo em uma tabela de histórico.

-- 223. Crie uma trigger que impeça inserir pedidos sem cliente associado.

-- 224. Crie uma trigger que, ao inserir um item de pedido, calcule automaticamente o valor total do item.

-- 225. Crie uma trigger que, ao excluir um item de pedido, recalcule o valor total do pedido.

-- 226. Crie uma trigger que impeça estoque negativo após venda.

-- 227. Crie uma trigger que registre log de exclusão de qualquer produto.

-- 228. Crie uma trigger que, ao atualizar um cliente, registre a data da última alteração.

-- 229. Crie uma trigger que impeça duplicidade de nome de produto.

-- 230. Crie uma trigger que, ao inserir um pedido, defina status padrão como 'Pendente'.

-- 261. Crie uma trigger BEFORE INSERT em ped_itens que calcule automaticamente o valor
-- (quantidade * precounitario do produto).

-- 262. Crie uma trigger AFTER INSERT em ped_itens que atualize o total do pedido.

-- 263. Crie uma trigger AFTER DELETE em ped_itens que atualize o total do pedido.

-- 264. Crie uma trigger AFTER UPDATE em ped_itens que atualize o total do pedido.

-- 265. Crie uma trigger que impeça inserir item com quantidade <= 0.

-- 266. Crie uma trigger que impeça pagamento maior que o total do pedido.

-- 267. Crie uma trigger que marque automaticamente um pedido como "Pago"
-- quando a soma dos pagamentos atingir o total.

-- 268. Crie uma trigger que impeça deletar pedidos que já possuem pagamento.

-- 269. Crie uma trigger que registre log de inserção de pedidos.

-- 270. Crie uma trigger que registre log de exclusão de clientes.

-- 271. Crie uma trigger que impeça atualizar preço para valor menor que zero.

-- 272. Crie uma trigger que impeça duplicidade de email em clientes.

-- 273. Crie uma trigger que ao inserir pagamento sem data, preencha com CURRENT_DATE.

-- 274. Crie uma trigger que impeça pedidos com data futura.

-- 275. Crie uma trigger que ao deletar um pedido, delete automaticamente seus itens
-- (simulando cascade manual).