--1) Cuantos clientes tenemos?
select COUNT(CustomerID) as [Cantidad de Clientes] from Customers

--2) Cual es la edad promedio de los empleados?
select avg (datediff(YY, em.BirthDate, GETDATE())) as [Promedio]  from Employees as em

--3) Cuantos clientes compraron el producto “Queso Cabrales”?
select count (pr.ProductID) as [Clientes que Compraron Queso Cabrales] from Products as pr
left join [Order Details] as od on pr.ProductID=od.ProductID
left join Orders as o on od.OrderID=o.OrderID
left join Customers as c on o.CustomerID=c.CustomerID
where ProductName='Queso Cabrales'

--4) Cual fue el promedio de precios al que se vendió el queso cabrales entre el 03/09/1996 y el 04/11/1996.
select avg (od.UnitPrice) as Promedio from Products as pr
left join [Order Details] as od on pr.ProductID=od.ProductID
left join Orders as o on od.OrderID=o.OrderID
where ProductName='Queso Cabrales' and OrderDate between '1996-09-03' and '1996-11-04'


--5) Cuantos son los clientes del vendedor de apellido “King”.
select  em.LastName, count (distinct c.CustomerID) as [Clientes de King] from Employees as em
left join Orders as o on em.EmployeeID=o.EmployeeID
left join Customers as c on o.CustomerID=c.CustomerID
where LastName='King'
group by em.LastName


