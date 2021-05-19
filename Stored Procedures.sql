--- Procedimientos Almacenados

create proc TraerCliente @cliente char(5)
as
select CustomerID, ContactName from Customers where CustomerID=@cliente

go

exec traercliente 

alter proc TraerCliente @cliente char(5)
as
select CustomerID, ContactName from Customers where CustomerID=@cliente

go

exec traercliente 'anton' 