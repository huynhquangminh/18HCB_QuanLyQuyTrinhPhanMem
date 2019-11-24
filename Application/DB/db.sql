USE [master]
GO
/****** Object:  Database [WebLapTrinh]    Script Date: 11/24/2019 3:48:39 PM ******/
CREATE DATABASE [WebLapTrinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebLapTrinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebLapTrinh.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebLapTrinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebLapTrinh_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebLapTrinh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebLapTrinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebLapTrinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebLapTrinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebLapTrinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebLapTrinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebLapTrinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebLapTrinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebLapTrinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebLapTrinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebLapTrinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebLapTrinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebLapTrinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebLapTrinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebLapTrinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebLapTrinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebLapTrinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebLapTrinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebLapTrinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebLapTrinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebLapTrinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebLapTrinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebLapTrinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebLapTrinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebLapTrinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebLapTrinh] SET  MULTI_USER 
GO
ALTER DATABASE [WebLapTrinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebLapTrinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebLapTrinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebLapTrinh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebLapTrinh] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebLapTrinh]
GO
/****** Object:  Table [dbo].[CapDo]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapDo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tencapdo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CapDo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSBaiHoc]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBaiHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenbaihoc] [nvarchar](100) NOT NULL,
	[idkhoahoc] [int] NOT NULL,
	[passbaihoc] [bit] NULL,
	[nhombaihoc] [int] NOT NULL,
 CONSTRAINT [PK_DSBaiHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSBanBe]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBanBe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idbanbe] [int] NOT NULL,
	[tenbanbe] [nvarchar](200) NOT NULL,
	[idaccount] [int] NOT NULL,
	[yeucau] [bit] NOT NULL,
 CONSTRAINT [PK_DSBanBe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSCauHoi]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSCauHoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tencauhoi] [nvarchar](max) NOT NULL,
	[idbaihoc] [int] NOT NULL,
	[idcapdo] [int] NOT NULL,
 CONSTRAINT [PK_DSCauHoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSDapAn]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSDapAn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idcauhoi] [int] NOT NULL,
	[cautraloi] [nvarchar](max) NOT NULL,
	[dapan] [bit] NOT NULL,
 CONSTRAINT [PK_DSDapAn] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSThongBao]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSThongBao](
	[id] [int] NOT NULL,
	[idaccount] [int] NOT NULL,
	[thongbao] [nvarchar](max) NOT NULL,
	[docthongbao] [bit] NOT NULL,
 CONSTRAINT [PK_DSThongBao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSYeuCauKetBan]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSYeuCauKetBan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idaccount] [int] NOT NULL,
	[idbanbe] [int] NOT NULL,
	[yeucau] [bit] NOT NULL,
 CONSTRAINT [PK_DSYeuCauKetBan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenkhoahoc] [nvarchar](50) NOT NULL,
	[passkhoahoc] [bit] NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDiemKN]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDiemKN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[diemKN] [int] NOT NULL,
 CONSTRAINT [PK_LoaiDiemKN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[email] [varchar](200) NULL,
	[img] [varchar](200) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinTaiKhoan]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinTaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idkhoahoc] [int] NOT NULL,
	[idcapdo] [int] NOT NULL,
	[diemKN] [int] NOT NULL,
	[diemKNDay] [int] NULL,
	[idbaihoc] [int] NULL,
	[idtaikhoan] [int] NOT NULL,
 CONSTRAINT [PK_ThongTinTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (1, N'user1', N'1234', N'user1@gmail', N'xxxx')
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (2, N'user1', N'1234', N'user2@gmail', N'xxx')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[DSBaiHoc]  WITH CHECK ADD  CONSTRAINT [FK_DSBaiHoc_KhoaHoc] FOREIGN KEY([idkhoahoc])
REFERENCES [dbo].[KhoaHoc] ([id])
GO
ALTER TABLE [dbo].[DSBaiHoc] CHECK CONSTRAINT [FK_DSBaiHoc_KhoaHoc]
GO
ALTER TABLE [dbo].[DSBanBe]  WITH CHECK ADD  CONSTRAINT [FK_DSBanBe_TaiKhoan] FOREIGN KEY([idaccount])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DSBanBe] CHECK CONSTRAINT [FK_DSBanBe_TaiKhoan]
GO
ALTER TABLE [dbo].[DSCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_DSCauHoi_CapDo] FOREIGN KEY([idcapdo])
REFERENCES [dbo].[CapDo] ([id])
GO
ALTER TABLE [dbo].[DSCauHoi] CHECK CONSTRAINT [FK_DSCauHoi_CapDo]
GO
ALTER TABLE [dbo].[DSCauHoi]  WITH CHECK ADD  CONSTRAINT [FK_DSCauHoi_DSBaiHoc] FOREIGN KEY([idbaihoc])
REFERENCES [dbo].[DSBaiHoc] ([id])
GO
ALTER TABLE [dbo].[DSCauHoi] CHECK CONSTRAINT [FK_DSCauHoi_DSBaiHoc]
GO
ALTER TABLE [dbo].[DSDapAn]  WITH CHECK ADD  CONSTRAINT [FK_DSDapAn_DSCauHoi] FOREIGN KEY([idcauhoi])
REFERENCES [dbo].[DSCauHoi] ([id])
GO
ALTER TABLE [dbo].[DSDapAn] CHECK CONSTRAINT [FK_DSDapAn_DSCauHoi]
GO
ALTER TABLE [dbo].[DSThongBao]  WITH CHECK ADD  CONSTRAINT [FK_DSThongBao_TaiKhoan] FOREIGN KEY([idaccount])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DSThongBao] CHECK CONSTRAINT [FK_DSThongBao_TaiKhoan]
GO
ALTER TABLE [dbo].[DSYeuCauKetBan]  WITH CHECK ADD  CONSTRAINT [FK_DSYeuCauKetBan_TaiKhoan] FOREIGN KEY([idaccount])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DSYeuCauKetBan] CHECK CONSTRAINT [FK_DSYeuCauKetBan_TaiKhoan]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_CapDo] FOREIGN KEY([idcapdo])
REFERENCES [dbo].[CapDo] ([id])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] CHECK CONSTRAINT [FK_ThongTinTaiKhoan_CapDo]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_DSBaiHoc] FOREIGN KEY([idbaihoc])
REFERENCES [dbo].[DSBaiHoc] ([id])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] CHECK CONSTRAINT [FK_ThongTinTaiKhoan_DSBaiHoc]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_KhoaHoc] FOREIGN KEY([idkhoahoc])
REFERENCES [dbo].[KhoaHoc] ([id])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] CHECK CONSTRAINT [FK_ThongTinTaiKhoan_KhoaHoc]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_LoaiDiemKN] FOREIGN KEY([diemKN])
REFERENCES [dbo].[LoaiDiemKN] ([id])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] CHECK CONSTRAINT [FK_ThongTinTaiKhoan_LoaiDiemKN]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_TaiKhoan] FOREIGN KEY([idtaikhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] CHECK CONSTRAINT [FK_ThongTinTaiKhoan_TaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_LOGIN]    Script Date: 11/24/2019 3:48:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ACCOUNT_LOGIN] (
	@user varchar(100),
	@pass varchar(100)
)
AS BEGIN 
	SELECT TOP 1 id, username, [password], img, email
	FROM TaiKhoan 
	WHERE username = @user AND [password] = @pass 
END 
GO
USE [master]
GO
ALTER DATABASE [WebLapTrinh] SET  READ_WRITE 
GO
