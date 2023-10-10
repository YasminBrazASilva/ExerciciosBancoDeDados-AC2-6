	SELECT p.*,
		   GROUP_CONCAT(o.nome) AS pizzaiolos
	  FROM pizzas AS p
		   LEFT JOIN pizzas_pizzaiolos AS po
			 ON po.pizza_id = p.id
		   LEFT JOIN pizzaiolos AS o
			 ON o.id = po.pizzaiolo_id
  GROUP BY p.id