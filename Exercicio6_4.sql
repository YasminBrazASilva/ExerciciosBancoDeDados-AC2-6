	SELECT p.*,
		   GROUP_CONCAT(i.ingrediente) AS ingredientes
	  FROM pizzas AS p
		   LEFT JOIN pizzas_ingredientes AS pi
			 ON pi.pizza_id = p.id
		   LEFT JOIN ingredientes AS i
			 ON i.id = pi.ingrediente_id
  GROUP BY p.id