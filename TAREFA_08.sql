-- 1) Listagem do cardápio ordenada por nome

SELECT codigo, nome, descricao, preco_unitario
FROM cardapio
ORDER BY nome;

-- 2) Todas as comandas + itens detalhados

SELECT
    c.codigo AS codigo_comanda,
    c.data_comanda,
    c.mesa,
    c.nome_cliente,
    ca.nome AS nome_cafe,
    ca.descricao,
    i.quantidade,
    ca.preco_unitario,
    (i.quantidade * ca.preco_unitario) AS preco_total_cafe
FROM comanda c
JOIN item_comanda i ON c.codigo = i.codigo_comanda
JOIN cardapio ca ON ca.codigo = i.codigo_cardapio
ORDER BY c.data_comanda, c.codigo, ca.nome;


-- 3) Comandas com valor total

SELECT
    c.codigo,
    c.data_comanda,
    c.mesa,
    c.nome_cliente,
    SUM(i.quantidade * ca.preco_unitario) AS valor_total
FROM comanda c
JOIN item_comanda i ON c.codigo = i.codigo_comanda
JOIN cardapio ca ON ca.codigo = i.codigo_cardapio
GROUP BY c.codigo, c.data_comanda, c.mesa, c.nome_cliente
ORDER BY c.data_comanda;


-- 4) Comandas com mais de um tipo de café

SELECT
    c.codigo,
    c.data_comanda,
    c.mesa,
    c.nome_cliente,
    SUM(i.quantidade * ca.preco_unitario) AS valor_total,
    COUNT(i.codigo_cardapio) AS qtd_tipos_cafe
FROM comanda c
JOIN item_comanda i ON c.codigo = i.codigo_comanda
JOIN cardapio ca ON ca.codigo = i.codigo_cardapio
GROUP BY c.codigo, c.data_comanda, c.mesa, c.nome_cliente
HAVING COUNT(i.codigo_cardapio) > 1
ORDER BY c.data_comanda;


-- 5) Total de faturamento por data

SELECT
    c.data_comanda,
    SUM(i.quantidade * ca.preco_unitario) AS total_faturamento
FROM comanda c
JOIN item_comanda i ON c.codigo = i.codigo_comanda
JOIN cardapio ca ON ca.codigo = i.codigo_cardapio
GROUP BY c.data_comanda
ORDER BY c.data_comanda;
