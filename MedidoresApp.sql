USE [master]
GO
/****** Object:  Database [MedidoresDB]    Script Date: 29/07/2021 3:57:14 ******/
CREATE DATABASE [MedidoresDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MedidoresDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MedidoresDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MedidoresDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MedidoresDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MedidoresDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MedidoresDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MedidoresDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MedidoresDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MedidoresDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MedidoresDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MedidoresDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MedidoresDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MedidoresDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MedidoresDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MedidoresDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MedidoresDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MedidoresDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MedidoresDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MedidoresDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MedidoresDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MedidoresDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MedidoresDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MedidoresDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MedidoresDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MedidoresDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MedidoresDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MedidoresDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MedidoresDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MedidoresDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MedidoresDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MedidoresDB] SET  MULTI_USER 
GO
ALTER DATABASE [MedidoresDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MedidoresDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MedidoresDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MedidoresDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MedidoresDB]
GO
/****** Object:  Table [dbo].[Lectura]    Script Date: 29/07/2021 3:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMedidor] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Valor] [decimal](18, 0) NULL CONSTRAINT [DF_Lectura_Valor]  DEFAULT ((0)),
 CONSTRAINT [PK_Lectura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medidor]    Script Date: 29/07/2021 3:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medidor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NroMedidor] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaActualizacion] [datetime] NULL,
	[Valor] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Medidor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 29/07/2021 3:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rut] [varchar](13) NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Apellido] [varchar](30) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Lectura]  WITH CHECK ADD  CONSTRAINT [FK_Lectura_Medidor] FOREIGN KEY([IdMedidor])
REFERENCES [dbo].[Medidor] ([Id])
GO
ALTER TABLE [dbo].[Lectura] CHECK CONSTRAINT [FK_Lectura_Medidor]
GO
USE [master]
GO
ALTER DATABASE [MedidoresDB] SET  READ_WRITE 
GO
