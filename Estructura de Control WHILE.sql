--- WHILE

DECLARE @contador int
set @contador=1

while @contador < 10
	begin
	print @contador
	set @contador=@contador+1
	if @contador=5
		break
	end