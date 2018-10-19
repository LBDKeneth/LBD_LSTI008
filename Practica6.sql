USE ConsultorioDental

--Subconsultas 
SELECT Importe FROM Factura WHERE Importe = any (SELECT Importe FROM Factura WHERE Fecha= '14/7/2018')
SELECT ID_Paciente, Nombre, Edad FROM Paciente WHERE exists(SELECT Fecha FROM Consulta INNER JOIN Paciente ON ID_Paciente= ID_Consulta)
SELECT * FROM Factura WHERE Importe = all (SELECT Importe FROM Factura WHERE Folio < 10)

--Subconsulta WITH

WITH PacientesAdultos AS(SELECT ID_Paciente, Nombre, Edad FROM Paciente WHERE Edad > 18) SELECT Nombre, Edad FROM PacientesAdultos ORDER BY Edad

--VISTAS
CREATE VIEW [PacientesMenores] AS SELECT Nombre, Edad FROM Paciente WHERE Edad < 18;

CREATE VIEW [PacientesMayores] AS SELECT Nombre, Edad FROM Paciente WHERE Edad >=18;

CREATE VIEW [FechasConsultas] AS SELECT Fecha, Hora FROM Consulta;

CREATE VIEW [Trabajadores] AS SELECT ID_Dentista, Nombre FROM Dentista;

CREATE VIEW [TratamientosPosibles] AS SELECT Nombre_Tratamiento, Precio FROM Tratamiento;

--Consulta Dinamica
DECLARE @Consulta NVARCHAR(500)
DECLARE @Tabla NVARCHAR(25)

SET @Tabla = 'Paciente'
SET @Consulta = 'SELECT * FROM ' + @Tabla

EXEC(@Consulta)