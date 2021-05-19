create function VendCliente (@cliente char(5))
returns table
as
return
(
	select o.CustomerID, e.LastName+', '+e.FirstName as ApellidoyNombre from Orders as o 
	join Employees as e on o.EmployeeID=e.EmployeeID
	where o.CustomerID=@cliente
)


declare @clientenuevo char(5)
set @clientenuevo='anton'
-- distinct me muestra un registro de cada tipo
select distinct c.CompanyName, vc.ApellidoyNombre from Customers as c
join VendCliente(@clientenuevo) as vc on c.CustomerID=vc.CustomerID
