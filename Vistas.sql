--- VISTAS

select * from Products

create view ProductosConStock as 
	select * from Products where UnitsInStock>0

select * from ProductosConStock

alter view Consulta as
 select CustomerID, dbo.PrimeraFechaCpra(CustomerID) as PrimVta,
 dbo.UltFechaCpra(CustomerID) as UltVta,
 datediff(DD, dbo.PrimeraFechaCpra(CustomerID),
 dbo.UltFechaCpra(CustomerID)) as DiasEntreVentas
 from Customers

 select * from Consulta

 --- para borrar

 drop view ProductosConStock

