--Select Into
--Nos permite combinar el select con el insert
--Crea una tabala a partir de una consulta
--Sirve para hacer una especie de BACKUP

--Me crea y genera una tabla con 91 registros
Select * into nuevaTabla from consulta

select * from nuevaTabla

-- Para eliminar
drop table nuevaTabla

-- Si la quiero vaciar solamente
delete nuevaTabla

--Llenar la tabla vacio
insert nuevaTabla select * from consulta