USE ConsultorioDental


--Procedimiento tipo script
create procedure Procedimeinto1(@par nvarchar(10)) 
as begin 
	declare @var1 nvarchar(100)
	set @var1 = 'Hecho' + ' ' + @par
	print(@var1)
end --end = }

--Procedimientos almacenados

create proc Proc1(@p1 nvarchar(10)) 
as begin
	DECLARE @descripcion1 nvarchar(50)
	set @descripcion1 = 'Paciente que son mayores de edad'
	print(@descripcion1)
	SELECT * FROM PacientesMayores WHERE Nombre like '%' + @p1 + '%'
end
exec Proc1 @p1 = 'B'

create proc Proc2(@p2 nvarchar(10))
as begin
	DECLARE @descripcion2 nvarchar(50)
	set @descripcion2 = 'Pacientes menores de edad'
	print(@descripcion2)
	SELECT * FROM PacientesMenores WHERE Nombre like '%' + @p2 + '%'
end
exec Proc2 @p2 = 'A'

create proc Proc3(@p3 nvarchar(10))
as begin
	DECLARE @descripcion3 nvarchar(50)
	set @descripcion3 = 'Trabajadores que estan dados de alta'
	print(@descripcion3)
	SELECT * FROM Trabajadores WHERE Nombre like '%' + @p3 + '%'
end
exec Proc2 @p2 = 'C'

create proc Proc4(@p4 nvarchar(10))
as begin
	DECLARE @descripcion4 nvarchar(50)
	set @descripcion4 = 'Tratamientos que pueden ser dadas a pacientes'
	print(@descripcion4)
	SELECT * FROM TratamientosPosibles WHERE Nombre_Tratamiento like '%' + @p4 + '%'
end
exec Proc4 @p4 = 'A'

create proc Proc5(@p5 nvarchar(10))
as begin
	DECLARE @descripcion5 nvarchar(50)
	set @descripcion5 = 'Fechas y horas de las consultas'
	print(@descripcion5)
	SELECT * FROM FechasConsultas WHERE Fecha like '%' + @p5 + '%'
end
exec Proc5 @p5 = '13'

create function MiFuncion(@parametro1 nvarchar(50)) returns nvarchar(50)
as begin 
	return @parametro1 + ' ' + 'es una funcion'
end

select dbo.MiFuncion('Esta') as Ejemplo