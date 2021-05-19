---Left join
---Que clientes no compraron productos (clientes que no tengan orders)
select c.CompanyName, o.OrderID from Customers as c
left join Orders as o on c.CustomerID = o.CustomerID order by o.OrderID --832 registros

select c.CompanyName, o.OrderID from Customers as c
join Orders as o on c.CustomerID = o.CustomerID order by o.OrderID --830 registros

select c.CompanyName, o.OrderID from Customers as c
left join Orders as o on c.CustomerID = o.CustomerID 
where o.OrderDate is null --las compañias que nunca compraron