USE	"ConsultorioDental"

--Contratar personal 
INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('1', 'Pepe Gonzales', 'Hombre', 26);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('2', 'Juan Gonzales', 'Hombre', 24);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('3', 'Maria Martinez', 'Mujer', 28);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('4', 'Jorge Blanco', 'Hombre', 30);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('5', 'Janeth Morelos', 'Mujer', 35);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('6', 'Marcela Briones', 'Mujer', 23);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('7', 'Lazaro Alvares', 'Hombre', 20);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('8', 'Jared Alvarado', 'Hombre', 28);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('9', 'Gerardo Juarez', 'Hombre', 27);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('10', 'Kevin Alejandro', 'Hombre', 30);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('11', 'Cesar Vazques', 'Hombre', 28);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('12', 'Omar Banda', 'Hombre', 37);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('13', 'David Alejandro', 'Hombre', 32);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('14', 'Ivana Rosales', 'Mujer', 35);

INSERT INTO "Dentista" (ID_Dentista, Nombre, Sexo, Edad)
VALUES ('15', 'Jose Ocon', 'Hombre', 43);

SELECT * FROM Dentista

--Dentista es despedido
DELETE Dentista WHERE Nombre= 'David Alejandro'

--Nos informan que un dentista pide actualizacion de edad
UPDATE Dentista SET Edad=44 WHERE Nombre='Jose Ocon' 

--Pacientes que estan en la base de datos
INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('1', 'Keneth Alexis', 'Hombre', 18, '8190237861');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('2', 'Juan Carlos', 'Hombre', 25, '8178237194');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('3', 'Andrea Patiño', 'Mujer', 17, '8175091289');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('4', 'Roberto Avila', 'Hombre', 37, '8145014789');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('5', 'Aneth Rosas', 'Mujer', 38, '8178284610');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('6', 'Jean Carlo', 'Hombre', 10, '8165937809');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('7', 'Ivan Valenciano', 'Hombre', 18 , '8189126753');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('8', 'Estefany Lizbeth', 'Mujer', 20 , '8119742978');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('9', 'Silvia Martinez', 'Mujer',38 , '8183671290');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('10', 'Lyly Garcia', 'Mujer', 15, '8187205473');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('11', 'Alan Garza', 'Hombre', 9, '8112984588');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('12', 'Alondra Yamile', 'Mujer', 25, '8112345678');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('13', 'Jesus Castañuela', 'Hombre', 30, '8165904538');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('14', 'Gerardo Galindo', 'Hombre', 36, '8110293847');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('15', 'Venezia Valverde', 'Mujer', 17, '8176109236');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('16', 'Ricardo Rivera', 'Hombre', 28, '8176109792');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('17', 'Alberto Davila', 'Hombre', 23, '8176489236');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('18', 'Axel Ali', 'Hombre', 50, '8129089236');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('19', 'Cecy Godina', 'Mujer', 22, '8190409236');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('20', 'Kevin Jared', 'Hombre', 30, '8170979236');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('21', 'Leslie Landeros', 'Mujer', 34, '8176475236');

INSERT INTO "Paciente" (ID_Paciente, Nombre, Sexo, Edad, Telefono)
VALUES ('22', 'Raymundo Martinez', 'Hombre', 43, '8176191236');

SELECT * FROM Paciente

--Ya no vendran pacientes, pidio borrar sus datos
DELETE Paciente WHERE Nombre = 'Alan Garza'
DELETE Paciente WHERE Nombre = 'Kevin Jared'
DELETE Paciente WHERE Nombre = 'Ivan Valenciano'

--El paciente viene a cambiar su telefono
UPDATE Paciente SET Telefono = '8134587923' WHERE Nombre='Keneth Alexis'


--Tipos de tratamiento que hay

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('1', 'Pastillas', 'Ingerir pastillas con medicamento', $50);

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('2', 'Inyecciones', 'Medicina durante el tratamiento con inyecciones', $50);

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('3', 'Limpieza', 'Una limpieza a dientes con instrumentos', $100);

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('4', 'Extraccion', 'Extraccion de diente si es necesario', $150);

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('5', 'Brackets', 'Poner brackets', $1000);

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('6', 'Frenos', 'La inserccion de frenos a los dientes', $500);

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('7', 'Tratamiento de caries', 'Hacer tratamiento a dientes con caries', $200);

INSERT INTO "Tratamiento" (ID_Tratamiento, Nombre_Tratamiento, Tipo_Tratamiento, Precio)
VALUES ('8', 'Reemplazo', 'Reemplazar un diente dañado', $300);

SELECT * FROM Tratamiento

--Debido a que ya no se realizara el tratamiento se borrara de la base de datos
DELETE Tratamiento WHERE Nombre_Tratamiento='Reemplazo';

--A causa de que se cambiara el precio de varios tratamientos se actualiza el precio
UPDATE Tratamiento SET Precio = $200 WHERE Nombre_Tratamiento = 'Extraccion'
UPDATE Tratamiento SET Precio = $600 WHERE Nombre_Tratamiento = 'Frenos'
UPDATE Tratamiento SET Precio = $800 WHERE Nombre_Tratamiento = 'Brackets'

--Son consultas con fecha y hora respectivos
INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('1','12/7/2018','12:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('2','12/7/2018','14:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('3','12/7/2018','15:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('4','12/7/2018','18:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('5','13/7/2018','12:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('6','13/7/2018','13:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('7','13/7/2018','15:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('8','13/7/2018','14:30');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('9','13/7/2018','17:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('10','13/7/2018','18:30');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('11','14/7/2018','12:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('12','14/7/2018','13:30');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('13','14/7/2018','15:00');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('14','14/7/2018','16:30');

INSERT INTO "Consulta" (ID_Consulta,Fecha, Hora)
VALUES ('15','14/7/2018','18:00');

--Facturas que fueron pagadas en el momento y se registraron

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0101', '12/7/2018', $100);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0102', '12/7/2018', $500);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0103', '12/7/2018', $150);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0104', '12/7/2018', $100);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0105', '13/7/2018', $800);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0106', '13/7/2018', $300);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0107', '13/7/2018', $300);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0108', '13/7/2018', $600);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0109', '13/7/2018', $150);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0110', '13/7/2018', $200);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0111', '14/7/2018', $150);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0112', '14/7/2018', $500);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0113', '14/7/2018', $800);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0114', '14/7/2018', $200);

INSERT INTO "Factura" (Folio, Fecha, Importe)
VALUES('0115', '14/7/2018', $150);

