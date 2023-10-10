	SELECT i.*,
		   GROUP_CONCAT(p.sabor) AS pizzas
	  FROM ingredientes AS i
		   LEFT JOIN pizzas_ingredientes AS pi
			 ON pi.ingrediente_id = i.id
		   LEFT JOIN pizzas AS p
			 ON p.id = pi.pizza_id
  GROUP BY i.id