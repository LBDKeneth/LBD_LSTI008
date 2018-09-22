USE [ConsultorioDental]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'CONSTRAINT',@level2name=N'Revisa'

GO
ALTER TABLE [dbo].[Recibo] DROP CONSTRAINT [Paga]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [Revisa]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [Reserva]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 22/09/2018 12:34:51 p.m. ******/
DROP TABLE [dbo].[Trabajador]
GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 22/09/2018 12:34:51 p.m. ******/
DROP TABLE [dbo].[Recibo]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/09/2018 12:34:51 p.m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 22/09/2018 12:34:51 p.m. ******/
DROP TABLE [dbo].[Cita]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 22/09/2018 12:34:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[ID_Cita] [nvarchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Hora] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[ID_Cita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/09/2018 12:34:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID_Cliente] [nchar](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Consulta] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 22/09/2018 12:34:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recibo](
	[ID_Recibo] [nchar](10) NOT NULL,
	[Monto_Total] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Recibo] PRIMARY KEY CLUSTERED 
(
	[ID_Recibo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 22/09/2018 12:34:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[ID_Trabajador] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Rol] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Trabajador] PRIMARY KEY CLUSTERED 
(
	[ID_Trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [Reserva] FOREIGN KEY([Nombre])
REFERENCES [dbo].[Cita] ([ID_Cita])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [Reserva]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [Revisa] FOREIGN KEY([Nombre])
REFERENCES [dbo].[Trabajador] ([ID_Trabajador])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [Revisa]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [Paga] FOREIGN KEY([Monto_Total])
REFERENCES [dbo].[Cliente] ([ID_Cliente])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [Paga]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Revisa al paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'CONSTRAINT',@level2name=N'Revisa'
GO
