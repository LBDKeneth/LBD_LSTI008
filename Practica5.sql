USE ConsultorioDental;

--Selects con where en cada tabla
SELECT * FROM Paciente WHERE Edad > 18 ORDER BY Edad ASC
SELECT * FROM Dentista WHERE Sexo = 'Hombre'
SELECT * FROM Tratamiento WHERE Precio < $500
SELECT * FROM Consulta WHERE ID_Consulta > 5 
SELECT * FROM Factura WHERE Importe > $500

--Selects con funciones de agregacion
SELECT COUNT(Edad) as Edad, Sexo FROM Paciente WHERE Edad >=18 GROUP BY Sexo;
SELECT COUNT(Edad) as Edad, Sexo FROM Paciente GROUP BY Sexo HAVING COUNT(Edad)>4;
SELECT COUNT(Edad) as Edad, Nombre FROM Dentista WHERE Edad <= 30 GROUP BY Nombre;
SELECT MAX(Importe) as MayorPrecio FROM Factura ;
SELECT MIN(Importe) as MenorPrecio FROM Factura;
SELECT AVG(Precio) as Promedio FROM Tratamiento;

--Selects con join y group by
SELECT Nombre, Consulta.Fecha FROM Paciente INNER JOIN Consulta ON ID_Paciente=Consulta.ID_Consulta GROUP BY Nombre, Consulta.Fecha
SELECT Nombre as Paciente, Tratamiento.Nombre_Tratamiento as Tratamiento FROM Paciente INNER JOIN Tratamiento ON ID_Paciente=Tratamiento.ID_Tratamiento 
	GROUP BY Nombre, Tratamiento.Nombre_Tratamiento
SELECT Nombre as Dentista, Consulta.Fecha as FechaConsulta FROM Dentista INNER JOIN Consulta ON ID_Dentista=Consulta.ID_Consulta 
	GROUP BY Nombre, Consulta.Fecha

