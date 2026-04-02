--RANK() OVER (ORDER BY ped.total DESC) as ranking

/*RANK()()`: Atribui a mesma posição para empates, mas pula o próximo número. Ex: 1, 2, 2, 4.
DENSE_RANK()()`: Atribui a mesma posição para empates sem pular números. Ex: 1, 2, 2, 3.
ROW_NUMBER()()`: Atribui um número único para cada linha, mesmo em empates. Ex: 1, 2, 3, 4. */