USE [master]
GO
/****** Object:  Database [价格服务]    Script Date: 11/24/2017 22:09:28 ******/
CREATE DATABASE [价格服务] ON  PRIMARY 
( NAME = N'价格服务', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\价格服务.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'价格服务_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\价格服务_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [价格服务] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [价格服务].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [价格服务] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [价格服务] SET ANSI_NULLS OFF
GO
ALTER DATABASE [价格服务] SET ANSI_PADDING OFF
GO
ALTER DATABASE [价格服务] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [价格服务] SET ARITHABORT OFF
GO
ALTER DATABASE [价格服务] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [价格服务] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [价格服务] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [价格服务] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [价格服务] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [价格服务] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [价格服务] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [价格服务] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [价格服务] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [价格服务] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [价格服务] SET  DISABLE_BROKER
GO
ALTER DATABASE [价格服务] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [价格服务] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [价格服务] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [价格服务] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [价格服务] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [价格服务] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [价格服务] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [价格服务] SET  READ_WRITE
GO
ALTER DATABASE [价格服务] SET RECOVERY SIMPLE
GO
ALTER DATABASE [价格服务] SET  MULTI_USER
GO
ALTER DATABASE [价格服务] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [价格服务] SET DB_CHAINING OFF
GO
USE [价格服务]
GO
/****** Object:  Table [dbo].[users]    Script Date: 11/24/2017 22:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[users] ([username], [password]) VALUES (N'zcmujcc', N'zcmujcc')
INSERT [dbo].[users] ([username], [password]) VALUES (N'zcmuprice', N'zcmuprice')
/****** Object:  Table [dbo].[announcement]    Script Date: 11/24/2017 22:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[announcement](
	[title] [varchar](1000) NOT NULL,
	[datetime] [datetime] NOT NULL,
	[type] [varchar](10) NOT NULL,
	[documentname] [varchar](1000) NOT NULL,
	[path] [varchar](1000) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江中医药大学滨江学院2017-2018学年收费公示栏', CAST(0x0000A835015228C0 AS DateTime), N'3', N'浙江中医药大学滨江学院2017-2018学年收费公示栏.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江中医药大学滨江学院2017-2018学年收费公示栏.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'关于规范和调整普通高校住宿费的通知', CAST(0x0000A8350165C510 AS DateTime), N'2', N'关于规范和调整普通高校住宿费的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\关于规范和调整普通高校住宿费的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'关于加强研究生教育学费标准管理的通知', CAST(0x0000A8350165E130 AS DateTime), N'2', N'关于加强研究生教育学费标准管理的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\关于加强研究生教育学费标准管理的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省高等学校学生住宿收费管理暂办法的通知', CAST(0x0000A835016614C0 AS DateTime), N'2', N'浙江省高等学校学生住宿收费管理暂办法的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省高等学校学生住宿收费管理暂办法的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'转发《教育部等部门关于2007年规范教育收费、进一步治理教育乱收费工作的实施意见》的通知', CAST(0x0000A83501692264 AS DateTime), N'2', N'转发《教育部等部门关于2007年规范教育收费、进一步治理教育乱收费工作的实施意见》的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\转发《教育部等部门关于2007年规范教育收费、进一步治理教育乱收费工作的实施意见》的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙价省教育委员会、浙江省物价局浙江省财政厅转发国家教委、计委关于调整自费来华留学生收费标准的通知', CAST(0x0000A835016A349C AS DateTime), N'2', N'浙价省教育委员会、浙江省物价局浙江省财政厅转发国家教委、计委关于调整自费来华留学生收费标准的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙价省教育委员会、浙江省物价局浙江省财政厅转发国家教委、计委关于调整自费来华留学生收费标准的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省教育厅 浙江省物价局 浙江省财政厅关于进一步规范教育收费工作的通知', CAST(0x0000A835016A763C AS DateTime), N'2', N'浙江省教育厅 浙江省物价局 浙江省财政厅关于进一步规范教育收费工作的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省教育厅 浙江省物价局 浙江省财政厅关于进一步规范教育收费工作的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省物价局 浙江省财政厅 浙江省教育厅 关于规范和调整公办普通高校学费的通知', CAST(0x0000A835016AA9CC AS DateTime), N'2', N'浙江省物价局 浙江省财政厅 浙江省教育厅 关于规范和调整公办普通高校学费的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省物价局 浙江省财政厅 浙江省教育厅 关于规范和调整公办普通高校学费的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省物价局 浙江省财政厅 浙江省教育厅 关于调整成人高等教育收费标准的通知', CAST(0x0000A835016AC5EC AS DateTime), N'2', N'浙江省物价局 浙江省财政厅 浙江省教育厅 关于调整成人高等教育收费标准的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省物价局 浙江省财政厅 浙江省教育厅 关于调整成人高等教育收费标准的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省物价局 浙江省财政厅 浙江省教育厅关于高校学分制收费有关问题的通知', CAST(0x0000A835016AE338 AS DateTime), N'2', N'浙江省物价局 浙江省财政厅 浙江省教育厅关于高校学分制收费有关问题的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省物价局 浙江省财政厅 浙江省教育厅关于高校学分制收费有关问题的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省物价局 浙江省财政厅 浙江省教育厅关于进一步规范和完善教育收费有关政策的通知', CAST(0x0000A835016AFBD4 AS DateTime), N'2', N'浙江省物价局 浙江省财政厅 浙江省教育厅关于进一步规范和完善教育收费有关政策的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省物价局 浙江省财政厅 浙江省教育厅关于进一步规范和完善教育收费有关政策的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省物价局 浙江省教育厅 浙江省人力资源和社会保障厅关于印发《浙江省民办教育收费管理办法》的通知', CAST(0x0000A835016B17F4 AS DateTime), N'2', N'浙江省物价局 浙江省教育厅 浙江省人力资源和社会保障厅关于印发《浙江省民办教育收费管理办法》的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省物价局 浙江省教育厅 浙江省人力资源和社会保障厅关于印发《浙江省民办教育收费管理办法》的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省物价局 浙江省教育厅关于规范和调整民办高校收费的通知', CAST(0x0000A835016B32E8 AS DateTime), N'2', N'浙江省物价局 浙江省教育厅关于规范和调整民办高校收费的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省物价局 浙江省教育厅关于规范和调整民办高校收费的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江省物价局、浙江省财政厅、浙江省教育厅关于印发《浙江省普通高校学分制收费管理暂行办法》的通知', CAST(0x0000A835016B4DDC AS DateTime), N'2', N'浙江省物价局、浙江省财政厅、浙江省教育厅关于印发《浙江省普通高校学分制收费管理暂行办法》的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江省物价局、浙江省财政厅、浙江省教育厅关于印发《浙江省普通高校学分制收费管理暂行办法》的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江中医药大学关于调整成人高等教育收费标准的通知', CAST(0x0000A835016BCC6C AS DateTime), N'2', N'浙江中医药大学关于调整成人高等教育收费标准的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江中医药大学关于调整成人高等教育收费标准的通知.docx')
INSERT [dbo].[announcement] ([title], [datetime], [type], [documentname], [path]) VALUES (N'浙江中医药大学关于调整全日制学历教育学费标准的通知', CAST(0x0000A835016BE9B8 AS DateTime), N'2', N'浙江中医药大学关于调整全日制学历教育学费标准的通知.docx', N'C:\Users\as\Documents\GitHub\zcmu-service\announcement\浙江中医药大学关于调整全日制学历教育学费标准的通知.docx')
