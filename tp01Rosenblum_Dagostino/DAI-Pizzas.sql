USE [master]
GO
/****** Object:  Database [DAI-Pizzas]    Script Date: 10/3/2023 10:15:50 ******/
CREATE DATABASE [DAI-Pizzas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DAI-Pizzas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI-Pizzas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DAI-Pizzas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI-Pizzas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DAI-Pizzas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DAI-Pizzas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DAI-Pizzas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET ARITHABORT OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DAI-Pizzas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DAI-Pizzas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DAI-Pizzas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DAI-Pizzas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET RECOVERY FULL 
GO
ALTER DATABASE [DAI-Pizzas] SET  MULTI_USER 
GO
ALTER DATABASE [DAI-Pizzas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DAI-Pizzas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DAI-Pizzas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DAI-Pizzas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DAI-Pizzas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DAI-Pizzas', N'ON'
GO
ALTER DATABASE [DAI-Pizzas] SET QUERY_STORE = OFF
GO
USE [DAI-Pizzas]
GO
/****** Object:  User [alumno]    Script Date: 10/3/2023 10:15:50 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Pizzas]    Script Date: 10/3/2023 10:15:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizzas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
	[LibreGluten] [bit] NULL,
	[Importe] [float] NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Pizzas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pizzas] ON 

INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (1, N'Pizza Muzzarella', 0, 800.5, N'Pizza con queso Muzzarella.')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (2, N'Pizza Fugazzeta', 1, 1000, N'Pizza con queso Muzzarella, tiene rica cebolla y te deja un aliento como para hacerle la permanente a tu pareja..')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (3, N'Pizza Carbonara', 1, 1540.5, N'Salsa carbonara: huevo, queso parmesano, sal y pimienta. Cebolla, bacon (kevin) y queso rallado por encima, ya que por debajo no se ve.')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (4, N'Pizza Margarita', 1, 1450, N'Salsa de tomate, mozzarella, albahaca, orégano y aceite de oliva. Viene con un mentoplus..')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (5, N'Pizza Napolitana', 0, 1270, N'Salsa de tomate, queso mozzarella, anchoas, orégano, alcaparras y aceite de oliva. Un corcho para cuando vas al excusado..')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (6, N'Pizza Cuatro Quesos', 1, 1380, N'El queso fontina, originario del Valle de La garompiña; el queso gorgonzola, natural de Milán; el queso parmesano, originario de la ciudad de Parma; y el queso mozzarella del supermercado DIA.')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (7, N'Pizza con Jamon', 0, 1210, N'Pizza con queso Muzzarella, se le agrega Jamon y te cobro el doble.')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (8, N'Pizza con Rucula y Provolone', 1, 1380, N'Riquisima Pizza a la piedra, con queso provolone.. con el aliento de dragon que te queda aflojas un tornillo de un puente de hierro.')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (9, N'Pizza Picante.', 1, 1400, N'Masa fina, queso del super de la esquina, aji mejicano recontra piacante. Cuando vas al baño se incendia el papel higienico..')
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (10, N'Faina', 0, 160, N'Harina, aceite, sal y pimienta... y despues te compras una faina en el COTO.')
SET IDENTITY_INSERT [dbo].[Pizzas] OFF
GO
USE [master]
GO
ALTER DATABASE [DAI-Pizzas] SET  READ_WRITE 
GO
