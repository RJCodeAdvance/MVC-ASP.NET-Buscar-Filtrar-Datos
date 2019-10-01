--Busqueda de datos exactos
select *from Clientes where Nombre='romeo'
--Busqueda de datos por Aproximacion 
select *from Clientes where Nombre like 'Zo%'
--PROCEDIMIENTO
CREATE PROC VerRegistros
@Condicion nvarchar(30)
as
select *from Clientes where ID like @Condicion+'%' or Nombre like @Condicion+'%' 
go
exec VerRegistros 'Tama'