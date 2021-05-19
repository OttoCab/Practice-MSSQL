--declare nombreCursor CURSOR FOR
--	select campos from tabla ---

--open MiCursor

--Fetch next from MiCursor into @descripcion

--print @descripcion

--@@FETCH_STATUS=0 ??

-- MiCursor
--Deallocate MiCursor


--declaramos variables
declare @nameProducts char(40), @contador int
--declaramos el cursor
set @contador=0
declare miCursor CURSOR for
	select p.ProductName from Products as p
	---abrimos el cursor
open miCursor
Fetch next from miCursor into @nameProducts
while @@FETCH_STATUS=0
	begin
		set @contador=@contador+1
		print 'Producto ' + convert(char(2),@contador)+ ' ' + @nameProducts
		Fetch next from miCursor into @nameProducts
	end
	close miCursor
	deallocate miCursor
