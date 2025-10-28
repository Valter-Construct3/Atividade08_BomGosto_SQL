-- ATIVIDADE 08 - CAFETERIA BOMGOSTO
-- Banco: bomgosto

-- =====================================================
-- ATIVIDADE 08 - CAFETERIA BOMGOSTO
-- MODELAGEM DO BANCO DE DADOS
-- =====================================================
-- Tabelas e seus relacionamentos:
--
-- CARDAPIO (codigo PK, nome, descricao, preco_unitario)
-- COMANDA (codigo PK, data_comanda, mesa, nome_cliente)
-- ITEM_COMANDA (codigo_comanda FK → COMANDA, 
--                codigo_cardapio FK → CARDAPIO,
--                quantidade, 
--                PK composta: codigo_comanda + codigo_cardapio)
-- =====================================================


-- 1) Criação do banco de dados
CREATE DATABASE bomgosto;

-- Conectar no banco
\c bomgosto;

-- 2) Tabela CARDAPIO
CREATE TABLE cardapio (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT,
    preco_unitario NUMERIC(10,2) NOT NULL
);

-- 3) Tabela COMANDA
CREATE TABLE comanda (
    codigo SERIAL PRIMARY KEY,
    data_comanda DATE NOT NULL,
    mesa INTEGER NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);

-- 4) Tabela ITEM_COMANDA
CREATE TABLE item_comanda (
    codigo_comanda INTEGER REFERENCES comanda(codigo) ON DELETE CASCADE,
    codigo_cardapio INTEGER REFERENCES cardapio(codigo),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (codigo_comanda, codigo_cardapio)
);
