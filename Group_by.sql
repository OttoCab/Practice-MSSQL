---Grupos
---Productos y promedio de ventas de

select p.ProductName, od.UnitPrice as [Precio Venta], p.UnitPrice [Precio Lista] from [Order Details] as od
join Products as p on p.ProductID = od.ProductID
order by p.ProductName

select p.ProductName, avg (od.UnitPrice) as PrecioVenta from [Order Details] as od
join Products as p on p.ProductID = od.ProductID
group by p.ProductName
having avg (od.UnitPrice) >10
order by p.ProductName


 select pr.ProductID, pr.ProductName, Prom.PrecioVentaProm, pr.UnitsInStock from Products as pr 
 join
 (select p.ProductID, avg (od.UnitPrice) as PrecioVentaProm from [Order Details] as od
join Products as p on p.ProductID = od.ProductID
group by p.ProductID) as Prom 
 on pr.ProductID=prom.ProductID