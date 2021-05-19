--Triggers
--Son una especie de Store Procedure que nos permite
--realizar distintas acciones sobre tables de forma casi automatica
--Son procedimientos que se disparan solos

Select * into Facturas from Orders
create trigger InsertarFacturas on Facturas
for insert 
as
	print 'Se agrego exitosamente la factura'

	insert Facturas (CustomerID, OrderDate) values ('micle','2020-10-06')

	select * from Facturas


ALTER trigger InsertarFacturas on Facturas
for insert 
as
	Select 'Se agrego exitosamente la factura', 
	inserted.OrderID from inserted

	insert Facturas (CustomerID, OrderDate) values ('micle','2020-10-06')