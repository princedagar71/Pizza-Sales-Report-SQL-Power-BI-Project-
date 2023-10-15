USE [master]
GO
/****** Object:  Database [PrincePizzaDB]    Script Date: 15-10-2023 18:56:31 ******/
CREATE DATABASE [PrincePizzaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PrincePizzaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PrincePizzaDB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PrincePizzaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PrincePizzaDB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PrincePizzaDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PrincePizzaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PrincePizzaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PrincePizzaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PrincePizzaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PrincePizzaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PrincePizzaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PrincePizzaDB] SET  MULTI_USER 
GO
ALTER DATABASE [PrincePizzaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PrincePizzaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PrincePizzaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PrincePizzaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PrincePizzaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PrincePizzaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PrincePizzaDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [PrincePizzaDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PrincePizzaDB]
GO
/****** Object:  Table [dbo].[pizza_sales]    Script Date: 15-10-2023 18:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizza_sales](
	[pizza_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[pizza_name_id] [varchar](50) NOT NULL,
	[quantity] [tinyint] NOT NULL,
	[order_date] [date] NOT NULL,
	[order_time] [time](7) NOT NULL,
	[unit_price] [float] NOT NULL,
	[total_price] [float] NOT NULL,
	[pizza_size] [varchar](50) NOT NULL,
	[pizza_category] [varchar](50) NOT NULL,
	[pizza_ingredients] [varchar](200) NOT NULL,
	[pizza_name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PrincePizzaDB] SET  READ_WRITE 
GO
