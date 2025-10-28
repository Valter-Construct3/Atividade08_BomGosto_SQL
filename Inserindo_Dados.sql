-- Inserindo cafés no cardápio
INSERT INTO cardapio (nome, descricao, preco_unitario) VALUES
('Expresso', 'Café forte e encorpado, 50ml', 5.00),
('Cappuccino', 'Café com leite e espuma cremosa', 8.00),
('Latte', 'Café suave com bastante leite', 7.50),
('Mocha', 'Café com chocolate e chantilly', 9.00),
('Macchiato', 'Café expresso com toque de leite', 6.00);

-- Inserindo comandas
INSERT INTO comanda (data_comanda, mesa, nome_cliente) VALUES
('2025-10-25', 1, 'Ana Silva'),
('2025-10-25', 2, 'Carlos Mendes'),
('2025-10-26', 3, 'Beatriz Souza'),
('2025-10-27', 1, 'João Pereira');

-- Inserindo itens das comandas
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(1, 1, 2),  -- Ana: 2 Expressos
(1, 2, 1),  -- Ana: 1 Cappuccino
(2, 3, 1),  -- Carlos: 1 Latte
(3, 4, 2),  -- Beatriz: 2 Mocha
(3, 5, 1),  -- Beatriz: 1 Macchiato
(4, 1, 1);  -- João: 1 Expresso
