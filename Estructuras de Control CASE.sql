--- CASE
--- SE USA DENTRO DE UN SELECT Y DEACUERDO AUN FORMATO

SELECT p.ProductName, p.UnitsInStock,
	case when p.UnitsInStock=0 then 'Stock en cero'
		 when p.UnitsInStock=10 then 'Quedan 10'
	else ' '
	end as Acción
FROM Products as p

SELECT p.ProductName, 
	case when p.UnitsInStock=0 then 'Stock en cero'
		 when p.UnitsInStock=10 then 'Quedan 10'
		 when p.UnitsInStock > 30 then 'Tenemos Suficiente'
	else convert (char(5), p.UnitsInStock)
	end as Acción
FROM Products as p
--preguntar

--- Segundo tipo de Case

SELECT p.ProductName, 
	case p.UnitsInStock 
	 when 0 then 'Stock en cero'
	 when 10 then 'Quedan 10' 
	else convert (char(5), p.UnitsInStock)
	end as Acción
FROM Products as p