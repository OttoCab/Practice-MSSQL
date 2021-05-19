Select ProductName as Producto, UnitPrice Precio  from Products where UnitPrice >40 order by UnitPrice desc

select count(*) CantidadProductos from Products

-- Forma en la que puedo agregar espacios, debo usar corchetes
select count(*) Hola from Products

-- Promedio de precio del producto 
select avg(UnitPrice) as Promedio from Products

-- Forma de encontrar el maximo
select max(UnitPrice) as Maximo from Products

-- Listar los productos que comiencen con la letra A
select ProductName from Products where ProductName like 'a%'

-- Fechas
select* from Orders where OrderDate between '1996-08-01' and '1996-10-01' order by OrderDate desc

-- Clientes que compraron que productos
select * from Customers
join Orders on Customers.CustomerID = Orders.CustomerID

-- Clientes que compraron que productos 2° opcion
select * from Customers as c
join Orders as o on c.CustomerID=o.CustomerID
join [Order Details] od on o.OrderID=od.OrderID
join Products as p on od.ProductID=p.ProductID

select CompanyName, ProductName from Customers as c
join Orders as o on c.CustomerID=o.CustomerID
join [Order Details] od on o.OrderID=od.OrderID
join Products as p on od.ProductID=p.ProductID order by CompanyName



