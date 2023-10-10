-- Cria a tabela "pizzas"
CREATE TABLE pizzas (
	id INT NOT NULL PRIMARY KEY,
    sabor VARCHAR(50) NOT NULL,
    preco DECIMAL(5, 2),
    descricao VARCHAR(400),
    tamanho VARCHAR(10),
    embalagem_material VARCHAR(50),
    embalagem_tamanho VARCHAR(10),
    embalagem_preco DECIMAL(4, 2),
    receita_id INT
);

-- Insere dados na tabela "pizzas"
INSERT INTO pizzas (id, sabor, preco, descricao, tamanho, embalagem_material, embalagem_tamanho, embalagem_preco, receita_id)
	VALUES (1, 'Calabresa', 29.99, 'Pizza de calabresa com cebola e molho de tomate.', 'Média', 'Papelão', 'Média', 1.50, 101),
		   (2, 'Mussarela', 27.50, 'Pizza de mussarela com molho de tomate e azeitonas.', 'Grande', 'Papelão', 'Grande', 2.00, 102),
		   (3, 'Frango Catupiry', 31.99, 'Pizza de frango com catupiry e milho.', 'Média', 'Papelão', 'Média', 1.75, 103),
		   (4, 'Margherita', 28.75, 'Pizza margherita com molho de tomate, mussarela e manjericão.', 'Grande', 'Papelão', 'Grande', 2.25, 104),
 		   (5, 'Pepperoni', 30.25, 'Pizza de pepperoni com molho de tomate e queijo cheddar.', 'Média', 'Papelão', 'Média', 1.90, 105),
 		   (6, 'Quatro Queijos', 32.50, 'Pizza quatro queijos com molho branco e parmesão.', 'Grande', 'Papelão', 'Grande', 2.50, 106),
		   (7, 'Vegetariana', 29.99, 'Pizza vegetariana com molho de tomate e diversos legumes.', 'Média', 'Papelão', 'Média', 1.75, 107),
		   (8, 'Portuguesa', 31.50, 'Pizza portuguesa com molho de tomate, presunto, ovos e azeitonas.', 'Grande', 'Papelão', 'Grande', 2.25, 108);

-- Cria a tabela "ingredientes"
CREATE TABLE ingredientes (
	id INT NOT NULL PRIMARY KEY,
    ingrediente VARCHAR(100) NOT NULL
);

-- Insere dados na tabela ingredientes
INSERT INTO ingredientes (id, ingrediente)
	VALUES (1, 'Molho de Tomate'),
	 	   (2, 'Queijo Mussarela'),
	 	   (3, 'Calabresa'),
		   (4, 'Cebola'),
		   (5, 'Azeitonas'),
		   (6, 'Frango'),
		   (7, 'Catupiry'),
		   (8, 'Milho'),
		   (9, 'Manjericão'),
		   (10, 'Pepperoni'),
		   (11, 'Queijo Cheddar'),
		   (12, 'Queijo Parmesão'),
		   (13, 'Legumes Variados'),
		   (14, 'Presunto'),
		   (15, 'Ovos'),
           (16, "Azeitona"),
           (17, "Molho branco"),
           (18, "Abacaxi"),
           (19, "Queijo Minas");


-- Cria a tabela "pizzas_ingredientes"
CREATE TABLE pizzas_ingredientes (
  pizza_id INT,
  ingrediente_id INT,
  FOREIGN KEY (pizza_id) REFERENCES Pizza(id),
  FOREIGN KEY (ingrediente_id) REFERENCES Ingrediente(id)
);

-- Insere dados na tabela "pizzas_ingredientes"
INSERT INTO pizzas_ingredientes (pizza_id, ingrediente_id)
VALUES (1, 1),
	   (1, 3),
	   (1, 4),
       (2, 1),
	   (2, 2),
	   (2, 5),
       (2, 16),
	   (3, 6),
 	   (3, 7),
	   (3, 8),
       (4, 1),
	   (4, 2),
	   (4, 9), 
       (5, 1),
	   (5, 10), 
	   (5, 11),
	   (6, 2),
	   (6, 11), 
	   (6, 12), 
       (6, 17),
       (6, 19),
	   (7, 1), 
	   (7, 13), 
	   (8, 1), 
	   (8, 14),
	   (8, 15),
       (8, 16);


-- Cria a tabela "receitas"
CREATE TABLE receitas (
	id INT NOT NULL PRIMARY KEY, 
    instrucoes VARCHAR(500) NOT NULL,
    autor VARCHAR(100)
);

-- Insere valores na tabela "receitas"
INSERT INTO receitas (id, instrucoes, autor)
	VALUES (101, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Adicione a calabresa e a cebola. 4. Asse no forno a 220°C por 15 minutos.', 'Chef Maria'),
	 	   (102, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Cubra com queijo mussarela e azeitonas. 4. Asse no forno a 220°C por 20 minutos.', 'Chef Antonio'),
		   (103, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Adicione o frango, catupiry e o milho. 4. Asse no forno a 220°C por 18 minutos.', 'Chef Carlos'),
		   (104, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Cubra com queijo mussarela e manjericão. 4. Asse no forno a 220°C por 16 minutos.', 'Chef Isabella'),
		   (105, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Adicione o pepperoni e o queijo cheddar. 4. Asse no forno a 220°C por 17 minutos.', 'Chef Roberto'),
		   (106, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Cubra com queijo mussarela, cheddar e parmesão. 4. Asse no forno a 220°C por 22 minutos.', 'Chef Gabriela'),
		   (107, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Adicione legumes variados. 4. Asse no forno a 220°C por 19 minutos.', 'Chef Paulo'),
		   (108, '1. Abra a massa de pizza. 2. Espalhe o molho de tomate uniformemente. 3. Adicione presunto, ovos e azeitonas. 4. Asse no forno a 220°C por 21 minutos.', 'Chef Laura');

-- Cria a tabela "pizzaiolos"
CREATE TABLE pizzaiolos (
	id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(8, 2) NOT NULL
);

-- Insere valores na tabela "pizzaiolos"
INSERT INTO pizzaiolos (id, nome, salario)
	VALUES (1, 'João Silva', 2500.00),
	 	   (2, 'Maria Santos', 2800.50),
		   (3, 'Carlos Mendes', 2650.75);

-- Cria a tabela "pizzas_pizzaiolos"
CREATE TABLE pizzas_pizzaiolos (
  pizza_id INT,
  pizzaiolo_id INT,
  FOREIGN KEY (pizza_id) REFERENCES pizza(id),
  FOREIGN KEY (pizzaiolo_id) REFERENCES pizzaiolo(id)
);

-- Insere dados na tabela "pizzas_pizzaiolos"
INSERT INTO pizzas_pizzaiolos (pizza_id, pizzaiolo_id)
	VALUES (1, 1),
           (1, 2),
		   (1, 3),
		   (2, 2),
		   (3, 3),
		   (4, 1),
		   (5, 2),
		   (6, 3),
		   (7, 2),
		   (7, 3),
		   (8, 2);