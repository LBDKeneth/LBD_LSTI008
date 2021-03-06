USE [TBOI_Keneth]
GO
/****** Object:  Table [dbo].[Trinkets]    Script Date: 08/09/2018 01:18:38 p.m. ******/
DROP TABLE [dbo].[Trinkets]
GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 08/09/2018 01:18:38 p.m. ******/
DROP TABLE [dbo].[Personaje]
GO
/****** Object:  Table [dbo].[Objeto_Pasivo]    Script Date: 08/09/2018 01:18:38 p.m. ******/
DROP TABLE [dbo].[Objeto_Pasivo]
GO
/****** Object:  Table [dbo].[Objeto_Activo]    Script Date: 08/09/2018 01:18:38 p.m. ******/
DROP TABLE [dbo].[Objeto_Activo]
GO
/****** Object:  Table [dbo].[Monstruos]    Script Date: 08/09/2018 01:18:38 p.m. ******/
DROP TABLE [dbo].[Monstruos]
GO
USE [master]
GO
/****** Object:  Database [TBOI_Keneth]    Script Date: 08/09/2018 01:18:38 p.m. ******/
DROP DATABASE [TBOI_Keneth]
GO
/****** Object:  Database [TBOI_Keneth]    Script Date: 08/09/2018 01:18:38 p.m. ******/
CREATE DATABASE [TBOI_Keneth]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TBOI_Keneth', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TBOI_Keneth.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TBOI_Keneth_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TBOI_Keneth_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TBOI_Keneth] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TBOI_Keneth].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TBOI_Keneth] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET ARITHABORT OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TBOI_Keneth] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TBOI_Keneth] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TBOI_Keneth] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TBOI_Keneth] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TBOI_Keneth] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TBOI_Keneth] SET  MULTI_USER 
GO
ALTER DATABASE [TBOI_Keneth] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TBOI_Keneth] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TBOI_Keneth] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TBOI_Keneth] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TBOI_Keneth]
GO
/****** Object:  Table [dbo].[Monstruos]    Script Date: 08/09/2018 01:18:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monstruos](
	[ID] [nchar](10) NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Vida] [int] NOT NULL,
	[Da�o] [int] NOT NULL,
 CONSTRAINT [PK_Monstruos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Objeto_Activo]    Script Date: 08/09/2018 01:18:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objeto_Activo](
	[ID] [nchar](10) NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Efecto] [nchar](10) NOT NULL,
	[Carga] [int] NULL,
	[Imagen] [image] NOT NULL,
 CONSTRAINT [PK_Objeto_Activo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Objeto_Pasivo]    Script Date: 08/09/2018 01:18:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objeto_Pasivo](
	[ID] [real] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Efecto] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Objeto_Pasivo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 08/09/2018 01:18:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personaje](
	[ID] [int] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Corazones] [int] NOT NULL,
	[Modelo] [image] NOT NULL,
	[Monedas] [money] NOT NULL,
	[Llaves] [int] NOT NULL,
	[Bombas] [int] NOT NULL,
	[Da�o] [float] NULL,
	[Rango] [float] NOT NULL,
	[Tears] [int] NOT NULL,
	[Velocidad] [int] NOT NULL,
 CONSTRAINT [PK_Personaje] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trinkets]    Script Date: 08/09/2018 01:18:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trinkets](
	[ID] [nchar](10) NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Efecto] [nchar](10) NOT NULL,
	[Imagen] [image] NOT NULL,
 CONSTRAINT [PK_Trinkets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [TBOI_Keneth] SET  READ_WRITE 
GO
