-- Tabelas base para os exercícios (crie antes ou imagine que já existem)

CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT,
    categoria VARCHAR(50),
    ativo BOOLEAN DEFAULT TRUE,
    data_cadastro DATE
);

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(60),
    pontos_fidelidade INT DEFAULT 0,
    ultima_compra DATE,
    newsletter BOOLEAN DEFAULT FALSE
);

CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(60),
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    data_admissao DATE,
    ativo BOOLEAN DEFAULT TRUE
);

-- Exercícios de UPDATE

--1 Aumente o preço de todos os produtos da categoria 'Eletrônicos' em 12%.
UPDATE produtos
SET    preco = preco * 1.12
WHERE  categoria = 'Eletrônicos';

-- Correção:
UPDATE produtos
SET    preco = ROUND(preco * 1.12, 2)
WHERE  categoria = 'Eletrônicos';

--2 Coloque o estoque como 0 (zero) em todos os produtos cujo preço seja maior que R$ 1.500,00.
UPDATE produtos
SET    estoque = 0
WHERE  preco > 1500;

--3 Atualize o campo ativo para FALSE em todos os produtos que estão com estoque menor que 3 unidades há mais tempo (data_cadastro anterior a 2023-01-01).

--4 Aumente em 15% o salário de todos os funcionários do departamento 'Vendas'.

--5 Dê 50 pontos de fidelidade extras para todos os clientes que fizeram a última compra depois de 01/01/2025.

--6 Mude a categoria de 'Acessórios' para 'Periféricos' em todos os produtos cujo nome contenha as palavras 'mouse', 'teclado' ou 'headset'.

--7 Defina o salário como R$ 3.800,00 para todos os funcionários cujo cargo seja 'Estagiário'.

--8 Ative (newsletter = TRUE) todos os clientes que possuem mais de 300 pontos de fidelidade.

--9 Reduza em 20% o preço dos produtos da categoria 'Roupas' que custam mais de R$ 200,00.

--10 Atualize a cidade para 'São Paulo' em todos os clientes cujo email termine com '@hotmail.com' ou '@outlook.com'.

--11 Aumente o estoque em 30 unidades para todos os produtos cujo nome contenha a palavra 'Fone'.

--12 Altere o cargo de 'Analista Júnior' para 'Analista Pleno' e dê 18% de aumento para esses funcionários.

--13 Coloque ativo = FALSE em todos os funcionários admitidos antes de 01/01/2020 que ainda estão ativos.

--14 Atualize o preço para R$ 99,90 em todos os produtos cujo preço atual esteja entre R$ 80,00 e R$ 120,00 e a categoria seja 'Livros'.

--15 Dê 100 pontos extras de fidelidade para clientes que moram em 'Porto Alegre', 'Curitiba' ou 'Florianópolis'.

--16 Aumente o preço em 8% nos produtos que têm estoque maior que 50 unidades e pertencem às categorias 'Games' ou 'Console'.

--17 Mude o departamento de 'Suporte' para 'Customer Success' e aumente 12% o salário desses funcionários.

--18 Defina ultima_compra como o dia atual (CURRENT_DATE) para todos os clientes que possuem newsletter = TRUE.

--19 Reduza o estoque em 5 unidades (mas nunca deixe ficar negativo) para todos os produtos cujo nome comece com 'Cabo'.

/*20 Aplique um aumento progressivo de salário:
22% para quem ganha até R$ 2.800
15% para quem ganha entre R$ 2.801 e R$ 5.500
8% para quem ganha acima de R$ 5.500 */