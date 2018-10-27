--trigger de insert
create trigger h_dentista_insert on Dentista for insert
	as begin
		declare @dentista varchar(20)
		set @dentista = 'Nuevo Empleado'
		print(@dentista)
	end
INSERT INTO Dentista(ID_Dentista, Nombre, Sexo, Edad)
VALUES('11', 'Pablo Escobar', 'Hombre', 56)

--trigger de update
create trigger u_dentista_update
	on Dentista
	for update
	as begin
		declare @dentistau varchar(40)
		set @dentistau='Se cambio informacion de un trabajador'
		print(@dentistau)
	end
UPDATE Dentista Set Edad=46 WHERE Nombre='Pablo Escobar'

--trigger de delete
create trigger d_dentista_delete
	on Dentista 
	for delete
	as begin
		declare @dentistad varchar(20)
		set @dentistad='Un trabajador menos'
		print(@dentistad)
	end
DELETE FROM Dentista WHERE Nombre= 'Pablo Escobar'