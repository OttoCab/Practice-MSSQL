--- Funciones Escalares
alter function PrimeraFechaCpra (@cliente char(5))
returns date
as
begin
	declare @fecha date

	select top 1 @fecha=o.OrderDate from Orders as o WHERE CustomerID=@cliente
	order by o.OrderDate asc
	return @fecha
end

create function UltFechaCpra (@cliente char(5))
returns date
as
begin
	declare @fecha date

	select top 1 @fecha=o.OrderDate from Orders as o WHERE CustomerID=@cliente
	order by o.OrderDate desc
	return @fecha
end

select c.CompanyName, dbo.PrimeraFechaCpra(c.CustomerID) as PrimCpra, 
dbo.UltFechaCpra(c.CustomerID) as UltCpra 
from Customers as c

select CustomerID, dbo.PrimeraFechaCpra(CustomerID),
 dbo.UltFechaCpra(CustomerID),
 datediff(DD, dbo.PrimeraFechaCpra(CustomerID),
 dbo.UltFechaCpra(CustomerID))
 from Customers
 order by datediff(DD, dbo.PrimeraFechaCpra(CustomerID),
 dbo.UltFechaCpra(CustomerID))


