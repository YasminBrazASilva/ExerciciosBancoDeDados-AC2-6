	SELECT p.sabor,
		   GROUP_CONCAT(o.nome) AS pizzaiolos,
		   r.instrucoes
	  FROM pizzas AS p
		   LEFT JOIN receitas AS r
				  ON r.id = p.receita_id
		   LEFT JOIN pizzas_pizzaiolos AS po
				  ON po.pizza_id = p.id
		   LEFT JOIN pizzaiolos AS o
				  ON o.id = po.pizzaiolo_id
GROUP BY p.id