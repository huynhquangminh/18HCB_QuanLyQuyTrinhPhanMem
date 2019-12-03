USE [master]
GO
/****** Object:  Database [WebLapTrinh]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[CapDo]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[DSBaiHoc]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBaiHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenbaihoc] [nvarchar](100) NOT NULL,
	[idkhoahoc] [int] NOT NULL,
 CONSTRAINT [PK_DSBaiHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSBaiHocPass_Of_TaiKhoan]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBaiHocPass_Of_TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTTTaiKhoan] [int] NOT NULL,
	[idBaiHoc] [int] NULL,
 CONSTRAINT [PK_DSBaiHocPass_Of_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSBanBe]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[DSCauHoi]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[DSDapAn]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[DSKhoaHocPass_Of_TaiKhoan]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSKhoaHocPass_Of_TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTTTaiKhoan] [int] NOT NULL,
	[idKhoaHoc] [int] NULL,
 CONSTRAINT [PK_DSKhoaHocPass_Of_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSThongBao]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[DSYeuCauKetBan]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenkhoahoc] [nvarchar](50) NOT NULL,
	[imgKhoaHoc] [varchar](500) NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiDiemKN]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  Table [dbo].[ThongTinTaiKhoan]    Script Date: 12/1/2019 2:34:06 PM ******/
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
	[idtaikhoan] [int] NOT NULL,
 CONSTRAINT [PK_ThongTinTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/***1***/
SET IDENTITY_INSERT [dbo].[CapDo] ON
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (1, N'Dễ')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (2, N'Trung Bình')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (3, N'Khó')
SET IDENTITY_INSERT [dbo].[CapDo] OFF

/***2***/
SET IDENTITY_INSERT [dbo].[DSBaiHoc] ON
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (1, N'SQL Co ban & Nang cao', 1)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (2, N'C# Co ban', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (3, N'Lap trinh ung dung C#', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (4, N'Ky thuat lap trinh C/C++', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (5, N'Angular va ung dung website', 4)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (6, N'Xay dung website voi Html/Css', 5)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (7, N'Tim hieu JavaScript co ban', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (8, N'JavaScript: Understanding the Weird Parts', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (9, N'Xay dung website voi JavaScript', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (10, N'PHP Nang cao', 7)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (11, N'Lap trinh website voi ReactJs', 8)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (12, N'VueJs và Project thuc te', 9)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (13, N'WordPress Co ban & Nang cao', 10)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (14, N'Thiet ke website WordPress chuan SEO', 10)
SET IDENTITY_INSERT [dbo].[DSBaiHoc] OFF

/***3***/
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ON
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (1, 1, 2)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (2, 1, 3)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (3, 2, 1)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (4, 2, 7)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (5, 2, 8)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (6, 2, 9)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (7, 3, 12)
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] OFF

/***4***/
SET IDENTITY_INSERT [dbo].[DSBanBe] ON
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 2, 'user2', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 4, 'user4', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 1, 'user1', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 3, 'user3', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 4, 'user4', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 2, 'user2', 3, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 4, 'user4', 3, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 1, 'user1', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 2, 'user2', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 3, 'user3', 3, 1)
SET IDENTITY_INSERT [dbo].[DSBanBe] OFF

/***5***/

/***6***/

/***7***/
SET IDENTITY_INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ON
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (1, 1, 3)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (2, 1, 5)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (3, 1, 9)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (4, 2, 3)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (5, 2, 5)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (4, 4, 1)
SET IDENTITY_INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] OFF

/***8***/
SET IDENTITY_INSERT [dbo].[DSThongBao] ON
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (1, 1, N'Con rat nhieu khoa hoc bo ich. Hay dang ky them de duoc trai nghiem.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (2, 1, N'Hay moi nhung nguoi ban cua ban cung tham gia khoa hoc.', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (3, 2, N'Con rat nhieu khoa hoc bo ich. Hay dang ky them de duoc trai nghiem.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (4, 2, N'Hay moi nhung nguoi ban cua ban cung tham gia khoa hoc.', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (5, 3, N'Con rat nhieu khoa hoc bo ich. Hay dang ky them de duoc trai nghiem.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (6, 3, N'Hay moi nhung nguoi ban cua ban cung tham gia khoa hoc.', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (7, 3, N'Dang co nhung bai hoc bo ich cho don ban.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (8, 3, N'Hay moi ban be cung tham gia tra loi cau hoi.', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (9, 4, N'Ban be cua ban dang co diem so rat tot. Hay co gang len nhe.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (10, 4, N'Khoa hoc ReactJs se la lua chon thu vi cho ban day.', 0)
SET IDENTITY_INSERT [dbo].[DSThongBao] OFF

/***9***/
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] ON
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (1, 1, 5, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (2, 1, 6, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (3, 2, 5, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (4, 3, 6, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (5, 3, 7, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (6, 4, 5, 1)
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] OFF

/***10***/
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (1, N'SQL ', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (2, N'C#', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (3, N'C/C++ ', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (4, N'Angular ', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (5, N'Html/Css', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (6, N'JavaScript', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (7, N'PHP', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (8, N'ReactJs', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (9, N'VueJs', NULL)
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (10, N'WordPress', NULL)
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF

/***11***/
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] ON 
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (1, 30)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (2, 65)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (3, 95)
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] OFF

/***12***/
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (1, N'user1', N'1234', N'user1@gmail', N'xxxx')
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (2, N'user2', N'1234', N'user2@gmail', N'xxx')
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (3, N'user3', N'1234', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (4, N'user4', N'1234', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF

/***13***/
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] ON
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (1, 2, 1, 230, 10, 1)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (2, 1, 1, 200, 14, 2)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (3, 6, 3, 500, 52, 2)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (4, 9, 2, 350, 38, 3)
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] OFF

ALTER TABLE [dbo].[DSBaiHoc]  WITH CHECK ADD  CONSTRAINT [FK_DSBaiHoc_KhoaHoc] FOREIGN KEY([idkhoahoc])
REFERENCES [dbo].[KhoaHoc] ([id])
GO
ALTER TABLE [dbo].[DSBaiHoc] CHECK CONSTRAINT [FK_DSBaiHoc_KhoaHoc]
GO
ALTER TABLE [dbo].[DSBaiHocPass_Of_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_DSBaiHocPass_Of_TaiKhoan_ThongTinTaiKhoan] FOREIGN KEY([idTTTaiKhoan])
REFERENCES [dbo].[ThongTinTaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DSBaiHocPass_Of_TaiKhoan] CHECK CONSTRAINT [FK_DSBaiHocPass_Of_TaiKhoan_ThongTinTaiKhoan]
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
ALTER TABLE [dbo].[DSKhoaHocPass_Of_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_DSKhoaHocPass_Of_TaiKhoan_ThongTinTaiKhoan] FOREIGN KEY([idTTTaiKhoan])
REFERENCES [dbo].[ThongTinTaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DSKhoaHocPass_Of_TaiKhoan] CHECK CONSTRAINT [FK_DSKhoaHocPass_Of_TaiKhoan_ThongTinTaiKhoan]
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
/****** Object:  StoredProcedure [dbo].[ACCOUNT_LOGIN]    Script Date: 12/1/2019 2:34:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_CapDo]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_CapDo] 
AS BEGIN 
	SELECT id, tencapdo
	FROM CapDo
END
GO
/****** Object:  StoredProcedure [dbo].[Get_DSBaiHoc]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DSBaiHoc](@idKhoaHoc int)
AS BEGIN 
	SELECT id, tenbaihoc, idkhoahoc
	FROM DSBaiHoc 
	WHERE idkhoahoc = @idKhoaHoc
END 
GO
/****** Object:  StoredProcedure [dbo].[Get_DSKhoaHoc]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DSKhoaHoc]
AS BEGIN 
	SELECT id, tenkhoahoc, imgKhoaHoc
	FROM KhoaHoc
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LoaiDiemKinhNghiem]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_LoaiDiemKinhNghiem] 
AS BEGIN 
	SELECT id, diemKN
	FROM LoaiDiemKN
END
GO
/****** Object:  StoredProcedure [dbo].[GET_THONGTINTAIKHOAN]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_THONGTINTAIKHOAN] (@idTaikhoan int)
AS
BEGIN
	SELECT TOP 1 id, idkhoahoc, idcapdo, diemKN, diemKNDay, idtaikhoan
	FROM ThongTinTaiKhoan 
	WHERE idtaikhoan = @idTaikhoan 
END

GO
/****** Object:  StoredProcedure [dbo].[INSERT_ACCOUNT]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERT_ACCOUNT] (@user varchar(100), @pass varchar(100))
AS BEGIN 
	IF NOT EXISTS  (SELECT* From TaiKhoan WHERE username = @user)
	BEGIN 
		INSERT INTO TaiKhoan (username, [password], email, img)
		Values (@user, @pass, null, null)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[THEM_THONGTINTAIKHOAN]    Script Date: 12/1/2019 2:34:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[THEM_THONGTINTAIKHOAN] (
	@idkhoahoc int, 
	@idcapdo int, 
	@diemKN int, 
	@diemKNDay int, 
	@idtaikhoan int
)
AS BEGIN
	INSERT INTO ThongThongTinTaiKhoan (idkhoahoc,idcapdo,diemKN, diemKNDay, idtaikhoan) 
	VALUES (@idkhoahoc,@idcapdo,@diemKN,@diemKNDay,@idtaikhoan)
END
GO
USE [master]
GO
ALTER DATABASE [WebLapTrinh] SET  READ_WRITE 
GO
