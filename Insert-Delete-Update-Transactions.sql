--- Insert
--- Insertar un producto nuevo

insert Products (ProductName, UnitPrice, UnitsInStock) values ('Sprite', 200, 500)

select * from Products

begin tran 
update Products set UnitPrice=125, UnitsInStock=UnitsInStock-10 where ProductID=78
-- si no coloco el where hace esto para toda la tabla

rollback tran

begin tran 
update Products set UnitPrice=125, UnitsInStock=UnitsInStock-10 where ProductID=78

select * from Products

commit tran

select * from Products where ProductID=78