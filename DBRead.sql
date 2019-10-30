USE [master]
GO
/****** Object:  Database [DBReadService]    Script Date: 10/30/2019 5:07:22 PM ******/
CREATE DATABASE [DBReadService]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBReadService', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DBReadService.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBReadService_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DBReadService_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DBReadService] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBReadService].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBReadService] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBReadService] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBReadService] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBReadService] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBReadService] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBReadService] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBReadService] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBReadService] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBReadService] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBReadService] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBReadService] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBReadService] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBReadService] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBReadService] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBReadService] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBReadService] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBReadService] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBReadService] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBReadService] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBReadService] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBReadService] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBReadService] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBReadService] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBReadService] SET  MULTI_USER 
GO
ALTER DATABASE [DBReadService] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBReadService] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBReadService] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBReadService] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBReadService] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBReadService] SET QUERY_STORE = OFF
GO
USE [DBReadService]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 10/30/2019 5:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IsWritten] [bit] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([Id], [Name], [Phone], [IsWritten], [Email]) VALUES (1, N'aaaaaaaaa', N'aaaaaa', 1, N'aaaaa')
INSERT [dbo].[Person] ([Id], [Name], [Phone], [IsWritten], [Email]) VALUES (2, N'Coudn''t connect to internal network ', N'3046250771', 1, N'BlakeMAvery@rhyta.com')
INSERT [dbo].[Person] ([Id], [Name], [Phone], [IsWritten], [Email]) VALUES (3, N'Coudn''t connect to internal network ', N'3046250771', 1, N'BlakeMAvery@rhyta.com')
INSERT [dbo].[Person] ([Id], [Name], [Phone], [IsWritten], [Email]) VALUES (4, N'Coudn''t connect to internal network ', N'3046250771', 1, N'BlakeMAvery@rhyta.com')
SET IDENTITY_INSERT [dbo].[Person] OFF
USE [master]
GO
ALTER DATABASE [DBReadService] SET  READ_WRITE 
GO
