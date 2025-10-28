# ☕ Atividade 08 - Modelando, Construindo e Pesquisando (SQL)

## 🎯 Objetivo
Modelar e construir o banco de dados da **Cafeteria BomGosto**, controlando comandas e cafés vendidos.

---

## 🧩 Estrutura do Banco

**Tabelas:**
- `cardapio` → cafés disponíveis (nome, descrição, preço)
- `comanda` → dados do cliente (data, mesa, nome)
- `item_comanda` → ligação entre comanda e cafés (quantidade, preços)

**Relacionamentos:**
- Uma `comanda` tem vários `itens`
- Um `item` referencia um café do `cardapio`

---

## 🧱 Scripts incluídos
1. Criação do banco e tabelas  
2. Inserção de dados de exemplo  
3. Consultas pedidas:
   - Listagem do cardápio
   - Itens das comandas
   - Total da comanda
   - Comandas com mais de um tipo de café
   - Faturamento por data

---

## 🧾 Arquivos
-  `Criacao_ Banco_ Tabelas.sql` → simulando a criação do DB
-  `Inserindo_Dados.sql` → inseerindo exemplos no DB
- `Atividade08_BomGosto.sql` → script completo
- `README.md` → explicação do projeto  

---

## 🧠 Desenvolvido por:
**Valter Filho**  
💻 Módulo: Banco de Dados  
📅 Data: Outubro / 2025
