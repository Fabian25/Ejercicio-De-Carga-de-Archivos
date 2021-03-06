USE [master]
GO
/****** Object:  Database [CargaNAcrhivos]    Script Date: 14/4/2019 21:41:51 ******/
CREATE DATABASE [CargaNAcrhivos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CargaNAcrhivos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CargaNAcrhivos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CargaNAcrhivos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CargaNAcrhivos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CargaNAcrhivos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CargaNAcrhivos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CargaNAcrhivos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET ARITHABORT OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CargaNAcrhivos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CargaNAcrhivos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CargaNAcrhivos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CargaNAcrhivos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET RECOVERY FULL 
GO
ALTER DATABASE [CargaNAcrhivos] SET  MULTI_USER 
GO
ALTER DATABASE [CargaNAcrhivos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CargaNAcrhivos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CargaNAcrhivos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CargaNAcrhivos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CargaNAcrhivos] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CargaNAcrhivos', N'ON'
GO
ALTER DATABASE [CargaNAcrhivos] SET QUERY_STORE = OFF
GO
USE [CargaNAcrhivos]
GO
/****** Object:  Table [dbo].[MiSalesOrderHeader]    Script Date: 14/4/2019 21:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MiSalesOrderHeader](
	[SalesOrderID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Status] [int] NULL,
	[SubTotal] [money] NULL,
	[TaxAmt] [money] NULL,
	[Freight] [money] NULL,
	[TotalDue] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 14/4/2019 21:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[SalesOrderID] [int] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [money] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CargaNAcrhivos] SET  READ_WRITE 
GO
