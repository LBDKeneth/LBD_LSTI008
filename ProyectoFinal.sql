USE [ConsultorioDental]
GO
/****** Object:  Trigger [u_dentista_update]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TRIGGER [dbo].[u_dentista_update]
GO
/****** Object:  Trigger [h_dentista_insert]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TRIGGER [dbo].[h_dentista_insert]
GO
/****** Object:  Trigger [d_dentista_delete]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TRIGGER [dbo].[d_dentista_delete]
GO
/****** Object:  View [dbo].[TratamientosPosibles]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP VIEW [dbo].[TratamientosPosibles]
GO
/****** Object:  View [dbo].[Trabajadores]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP VIEW [dbo].[Trabajadores]
GO
/****** Object:  View [dbo].[PacientesMenores]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP VIEW [dbo].[PacientesMenores]
GO
/****** Object:  View [dbo].[PacientesMayores]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP VIEW [dbo].[PacientesMayores]
GO
/****** Object:  View [dbo].[FechasConsultas]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP VIEW [dbo].[FechasConsultas]
GO
/****** Object:  Table [dbo].[Tratamiento]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Tratamiento]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Trabajador]
GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Recibo]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Table [dbo].[Dentista]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Dentista]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Consulta]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP TABLE [dbo].[Cita]
GO
/****** Object:  UserDefinedFunction [dbo].[MiFuncion]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP FUNCTION [dbo].[MiFuncion]
GO
/****** Object:  StoredProcedure [dbo].[Procedimeinto1]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP PROCEDURE [dbo].[Procedimeinto1]
GO
/****** Object:  StoredProcedure [dbo].[Proc5]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP PROCEDURE [dbo].[Proc5]
GO
/****** Object:  StoredProcedure [dbo].[Proc4]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP PROCEDURE [dbo].[Proc4]
GO
/****** Object:  StoredProcedure [dbo].[Proc3]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP PROCEDURE [dbo].[Proc3]
GO
/****** Object:  StoredProcedure [dbo].[Proc2]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP PROCEDURE [dbo].[Proc2]
GO
/****** Object:  StoredProcedure [dbo].[Proc1]    Script Date: 03/11/2018 12:48:17 p.m. ******/
DROP PROCEDURE [dbo].[Proc1]
GO
/****** Object:  StoredProcedure [dbo].[Proc1]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc1](@p1 nvarchar(10)) 
as begin
	DECLARE @descripcion1 nvarchar(50)
	set @descripcion1 = 'Paciente que son mayores de edad'
	print(@descripcion1)
	SELECT * FROM PacientesMayores WHERE Nombre like '%' + @p1 + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[Proc2]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc2](@p2 nvarchar(10))
as begin
	DECLARE @descripcion2 nvarchar(50)
	set @descripcion2 = 'Pacientes menores de edad'
	print(@descripcion2)
	SELECT * FROM PacientesMenores WHERE Nombre like '%' + @p2 + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[Proc3]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc3](@p3 nvarchar(10))
as begin
	DECLARE @descripcion3 nvarchar(50)
	set @descripcion3 = 'Trabajadores que estan dados de alta'
	print(@descripcion3)
	SELECT * FROM Trabajadores WHERE Nombre like '%' + @p3 + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[Proc4]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc4](@p4 nvarchar(10))
as begin
	DECLARE @descripcion4 nvarchar(50)
	set @descripcion4 = 'Tratamientos que pueden ser dadas a pacientes'
	print(@descripcion4)
	SELECT * FROM TratamientosPosibles WHERE Nombre_Tratamiento like '%' + @p4 + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[Proc5]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc5](@p5 nvarchar(10))
as begin
	DECLARE @descripcion5 nvarchar(50)
	set @descripcion5 = 'Fechas y horas de las consultas'
	print(@descripcion5)
	SELECT * FROM FechasConsultas WHERE Fecha like '%' + @p5 + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[Procedimeinto1]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Procedimeinto1](@par nvarchar(10)) 
as begin 
	declare @var1 nvarchar(100)
	set @var1 = 'Hecho' + ' ' + @par
	print(@var1)
end --end = }
GO
/****** Object:  UserDefinedFunction [dbo].[MiFuncion]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[MiFuncion](@parametro1 nvarchar(50)) returns nvarchar(50)
as begin 
	return @parametro1 + ' ' + 'es una funcion'
end
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[ID_Consulta] [nvarchar](50) NOT NULL,
	[Fecha] [nvarchar](10) NOT NULL,
	[Hora] [nvarchar](5) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[ID_Consulta] [nvarchar](50) NOT NULL,
	[Fecha] [nvarchar](10) NOT NULL,
	[Hora] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Consulta] PRIMARY KEY CLUSTERED 
(
	[ID_Consulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dentista]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dentista](
	[ID_Dentista] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Sexo] [nvarchar](6) NOT NULL,
	[Edad] [int] NOT NULL,
 CONSTRAINT [PK_Dentista] PRIMARY KEY CLUSTERED 
(
	[ID_Dentista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factura]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Folio] [nchar](10) NOT NULL,
	[Fecha] [nvarchar](50) NOT NULL,
	[Importe] [money] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[Folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[ID_Paciente] [nchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Sexo] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[ID_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recibo](
	[Folio] [nchar](10) NOT NULL,
	[Fecha] [nvarchar](50) NOT NULL,
	[Importe] [money] NOT NULL,
 CONSTRAINT [PK_Recibo_1] PRIMARY KEY CLUSTERED 
(
	[Folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[ID_Dentista] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Sexo] [nvarchar](6) NOT NULL,
	[Edad] [int] NOT NULL,
 CONSTRAINT [PK_Trabajador_1] PRIMARY KEY CLUSTERED 
(
	[ID_Dentista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tratamiento]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamiento](
	[ID_Tratamiento] [nvarchar](5) NOT NULL,
	[Nombre_Tratamiento] [nvarchar](30) NOT NULL,
	[Tipo_Tratamiento] [nvarchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_Tratamiento] PRIMARY KEY CLUSTERED 
(
	[ID_Tratamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[FechasConsultas]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FechasConsultas] AS SELECT Fecha, Hora FROM Consulta;
GO
/****** Object:  View [dbo].[PacientesMayores]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PacientesMayores] AS SELECT Nombre, Edad FROM Paciente WHERE Edad >=18;
GO
/****** Object:  View [dbo].[PacientesMenores]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW[dbo].[PacientesMenores] AS SELECT Nombre, Edad FROM Paciente WHERE Edad < 18;

GO
/****** Object:  View [dbo].[Trabajadores]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Trabajadores] AS SELECT ID_Dentista, Nombre FROM Dentista;
GO
/****** Object:  View [dbo].[TratamientosPosibles]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TratamientosPosibles] AS SELECT Nombre_Tratamiento, Precio FROM Tratamiento;
GO
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'1', N'12/7/2018', N'12:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'10', N'13/7/2018', N'18:30')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'11', N'14/7/2018', N'12:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'12', N'14/7/2018', N'13:30')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'13', N'14/7/2018', N'15:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'14', N'14/7/2018', N'16:30')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'15', N'14/7/2018', N'18:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'2', N'12/7/2018', N'14:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'3', N'12/7/2018', N'15:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'4', N'12/7/2018', N'18:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'5', N'13/7/2018', N'12:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'6', N'13/7/2018', N'13:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'7', N'13/7/2018', N'15:00')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'8', N'13/7/2018', N'14:30')
INSERT [dbo].[Consulta] ([ID_Consulta], [Fecha], [Hora]) VALUES (N'9', N'13/7/2018', N'17:00')
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'1', N'Pepe Gonzales', N'Hombre', 26)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'10', N'Kevin Alejandro', N'Hombre', 30)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'11', N'Cesar Vazques', N'Hombre', 28)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'12', N'Omar Banda', N'Hombre', 37)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'13', N'David Alejandro', N'Hombre', 32)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'14', N'Ivana Rosales', N'Mujer', 35)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'15', N'Jose Ocon', N'Hombre', 43)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'2', N'Juan Gonzales', N'Hombre', 24)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'3', N'Maria Martinez', N'Mujer', 28)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'4', N'Jorge Blanco', N'Hombre', 30)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'5', N'Janeth Morelos', N'Mujer', 35)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'6', N'Marcela Briones', N'Mujer', 23)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'7', N'Lazaro Alvares', N'Hombre', 20)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'8', N'Jared Alvarado', N'Hombre', 28)
INSERT [dbo].[Dentista] ([ID_Dentista], [Nombre], [Sexo], [Edad]) VALUES (N'9', N'Gerardo Juarez', N'Hombre', 27)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0101      ', N'12/7/2018', 100.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0102      ', N'12/7/2018', 500.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0103      ', N'12/7/2018', 150.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0104      ', N'12/7/2018', 100.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0105      ', N'13/7/2018', 800.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0106      ', N'13/7/2018', 300.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0107      ', N'13/7/2018', 300.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0108      ', N'13/7/2018', 600.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0109      ', N'13/7/2018', 150.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0110      ', N'13/7/2018', 200.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0111      ', N'14/7/2018', 150.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0112      ', N'14/7/2018', 500.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0113      ', N'14/7/2018', 800.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0114      ', N'14/7/2018', 200.0000)
INSERT [dbo].[Factura] ([Folio], [Fecha], [Importe]) VALUES (N'0115      ', N'14/7/2018', 150.0000)
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'1         ', N'Keneth Alexis', N'Hombre', 18, N'8190237861')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'10        ', N'Lyly Garcia', N'Mujer', 15, N'8187205473')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'11        ', N'Alan Garza', N'Hombre', 9, N'8112984588')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'12        ', N'Alondra Yamile', N'Mujer', 25, N'8112345678')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'13        ', N'Jesus Castañuela', N'Hombre', 30, N'8165904538')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'14        ', N'Gerardo Galindo', N'Hombre', 36, N'8110293847')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'15        ', N'Venezia Valverde', N'Mujer', 17, N'8176109236')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'16        ', N'Ricardo Rivera', N'Hombre', 28, N'8176109792')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'17        ', N'Alberto Davila', N'Hombre', 23, N'8176489236')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'18        ', N'Axel Ali', N'Hombre', 50, N'8129089236')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'19        ', N'Cecy Godina', N'Mujer', 22, N'8190409236')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'2         ', N'Juan Carlos', N'Hombre', 25, N'8178237194')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'20        ', N'Kevin Jared', N'Hombre', 30, N'8170979236')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'21        ', N'Leslie Landeros', N'Mujer', 34, N'8176475236')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'22        ', N'Raymundo Martinez', N'Hombre', 43, N'8176191236')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'3         ', N'Andrea Patiño', N'Mujer', 17, N'8175091289')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'4         ', N'Roberto Avila', N'Hombre', 37, N'8145014789')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'5         ', N'Aneth Rosas', N'Mujer', 38, N'8178284610')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'6         ', N'Jean Carlo', N'Hombre', 10, N'8165937809')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'7         ', N'Ivan Valenciano', N'Hombre', 18, N'8189126753')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'8         ', N'Estefany Lizbeth', N'Mujer', 20, N'8119742978')
INSERT [dbo].[Paciente] ([ID_Paciente], [Nombre], [Sexo], [Edad], [Telefono]) VALUES (N'9         ', N'Silvia Martinez', N'Mujer', 38, N'8183671290')
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'1', N'Pastillas', N'Ingerir pastillas con medicamento', 50.0000)
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'2', N'Inyecciones', N'Medicina durante el tratamiento con inyecciones', 50.0000)
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'3', N'Limpieza', N'Una limpieza a dientes con instrumentos', 100.0000)
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'4', N'Extraccion', N'Extraccion de diente si es necesario', 150.0000)
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'5', N'Brackets', N'Poner brackets', 1000.0000)
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'6', N'Frenos', N'La inserccion de frenos a los dientes', 500.0000)
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'7', N'Tratamiento de caries', N'Hacer tratamiento a dientes con caries', 200.0000)
INSERT [dbo].[Tratamiento] ([ID_Tratamiento], [Nombre_Tratamiento], [Tipo_Tratamiento], [Precio]) VALUES (N'8', N'Reemplazo', N'Reemplazar un diente dañado', 300.0000)
/****** Object:  Trigger [dbo].[d_dentista_delete]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[d_dentista_delete]
	on [dbo].[Dentista] 
	for delete
	as begin
		declare @dentistad varchar(20)
		set @dentistad='Un trabajador menos'
		print(@dentistad)
	end
DELETE FROM Dentista WHERE Nombre= 'Pablo Escobar'
GO
/****** Object:  Trigger [dbo].[h_dentista_insert]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[h_dentista_insert] on [dbo].[Dentista] for insert
	as begin
		declare @dentista varchar(20)
		set @dentista = 'Nuevo Empleado'
		print(@dentista)
	end
INSERT INTO Dentista(ID_Dentista, Nombre, Sexo, Edad)
VALUES('11', 'Pablo Escobar', 'Hombre', 56)

GO
/****** Object:  Trigger [dbo].[u_dentista_update]    Script Date: 03/11/2018 12:48:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[u_dentista_update]
	on [dbo].[Dentista]
	for update
	as begin
		declare @dentistau varchar(40)
		set @dentistau='Se cambio informacion de un trabajador'
		print(@dentistau)
	end
UPDATE Dentista Set Edad=46 WHERE Nombre='Pablo Escobar'
GO
