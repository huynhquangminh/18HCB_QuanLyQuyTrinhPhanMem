USE [master]
GO
/****** Object:  Database [WebLapTrinh]    Script Date: 2/9/2020 9:55:00 PM ******/
CREATE DATABASE [WebLapTrinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebLapTrinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebLapTrinh.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebLapTrinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebLapTrinh_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebLapTrinh] SET COMPATIBILITY_LEVEL = 110
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
/****** Object:  Table [dbo].[BieuDoTheoDoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BieuDoTheoDoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTaiKhoan] [int] NOT NULL,
	[Thu2] [int] NOT NULL,
	[Thu3] [int] NOT NULL,
	[Thu4] [int] NOT NULL,
	[Thu5] [int] NOT NULL,
	[Thu6] [int] NOT NULL,
	[Thu7] [int] NOT NULL,
	[ChuNhat] [int] NOT NULL,
	[TongDiemKN] [int] NULL,
	[NgayBatDau] [date] NOT NULL,
 CONSTRAINT [PK_BieuDoTheoDoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CapDo]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  Table [dbo].[DSBaiHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBaiHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenbaihoc] [nvarchar](100) NOT NULL,
	[idkhoahoc] [int] NULL,
 CONSTRAINT [PK_DSBaiHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSBaiHocPass_Of_TaiKhoan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBaiHocPass_Of_TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTTTaiKhoan] [int] NULL,
	[idBaiHoc] [int] NULL,
 CONSTRAINT [PK_DSBaiHocPass_Of_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSBanBe]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSBanBe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idbanbe] [int] NOT NULL,
	[idaccount] [int] NOT NULL,
	[yeucau] [bit] NOT NULL,
 CONSTRAINT [PK_DSBanBe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSCauHoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSCauHoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tencauhoi] [nvarchar](max) NOT NULL,
	[idbaihoc] [int] NULL,
	[idcapdo] [int] NOT NULL,
 CONSTRAINT [PK_DSCauHoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSDapAn]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  Table [dbo].[DSKhoaHocPass_Of_TaiKhoan]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  Table [dbo].[DSThongBao]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSThongBao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idaccount] [int] NOT NULL,
	[thongbao] [nvarchar](max) NOT NULL,
	[docthongbao] [bit] NOT NULL,
 CONSTRAINT [PK_DSThongBao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSYeuCauKetBan]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenkhoahoc] [varchar](500) NOT NULL,
	[imgKhoaHoc] [varchar](max) NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiDiemKN]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[noidung] [nvarchar](max) NOT NULL,
	[trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_PhanHoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2/9/2020 9:55:00 PM ******/
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
	[typeAccount] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinTaiKhoan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinTaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idkhoahoc] [int] NULL,
	[idcapdo] [int] NOT NULL,
	[diemKN] [int] NOT NULL,
	[diemKNDay] [int] NULL,
	[idtaikhoan] [int] NOT NULL,
	[ngayhoc] [date] NULL,
 CONSTRAINT [PK_ThongTinTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BieuDoTheoDoi] ON 

INSERT [dbo].[BieuDoTheoDoi] ([id], [idTaiKhoan], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [ChuNhat], [TongDiemKN], [NgayBatDau]) VALUES (1, 1, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-02-03' AS Date))
INSERT [dbo].[BieuDoTheoDoi] ([id], [idTaiKhoan], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [ChuNhat], [TongDiemKN], [NgayBatDau]) VALUES (8, 4, 34, 0, 45, 0, 23, 50, 0, -76, CAST(N'2020-02-03' AS Date))
SET IDENTITY_INSERT [dbo].[BieuDoTheoDoi] OFF
SET IDENTITY_INSERT [dbo].[CapDo] ON 

INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (1, N'Dễ')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (2, N'Trung Bình')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (3, N'Khó')
SET IDENTITY_INSERT [dbo].[CapDo] OFF
SET IDENTITY_INSERT [dbo].[DSBaiHoc] ON 

INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (1, N'Syntax', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (2, N'Arrays', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (3, N'Loop', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (4, N'Strings', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (5, N'OOP', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (6, N'Constructors', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (7, N'Methods', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (8, N'Class Members', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (13, N'Syntax', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (14, N'Variables', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (15, N'Operators', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (16, N'Strings', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (17, N'Loop', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (18, N'Arrays', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (19, N'OOP', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (20, N'Classes and Objects', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (21, N'Class Members', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (22, N'Methods', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (23, N'Constructors', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (24, N'Abstraction', 2)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (25, N'Syntax', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (26, N'Arrays', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (27, N'Loop', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (28, N'Class Members', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (29, N'Strings', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (30, N'OOP', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (31, N'Constructors', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (32, N'Methods', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (33, N'Syntax', 7)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (34, N'Arrays', 7)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (35, N'Loop', 7)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (37, N'Loop', 1)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (39, N'test1', 1)
SET IDENTITY_INSERT [dbo].[DSBaiHoc] OFF
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ON 

INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (1, 1, 2)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (2, 1, 3)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (3, 2, 1)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (4, 2, 7)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (5, 2, 8)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (6, 2, 9)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (7, 3, 12)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (10, NULL, 1)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (13, 14, 1)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (14, 14, 2)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (15, 14, 3)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (16, 14, 39)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (17, 14, 37)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (18, 3, 1)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (19, 14, 4)
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[DSBanBe] ON 

INSERT [dbo].[DSBanBe] ([id], [idbanbe], [idaccount], [yeucau]) VALUES (18, 2, 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [idaccount], [yeucau]) VALUES (19, 1, 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [idaccount], [yeucau]) VALUES (20, 1, 3, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [idaccount], [yeucau]) VALUES (21, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[DSBanBe] OFF
SET IDENTITY_INSERT [dbo].[DSCauHoi] ON 

INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (16, N'Để viết script PHP cần khai báo?', 33, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (17, N'Đâu là khai báo biến đúng trong PHP', 33, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (18, N'<code>$xinChao = "Học lập trình thật vui";<br><strong>____</strong> $xinChao;</code>. Điền từ khóa in biến xinChao', 33, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (19, N'PHP có phân biệt in hoa với in thường', 33, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (20, N'<code>echo _____("Hello world!");</code><br>Để đếm số ký tự dùng hàm nào', 33, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (21, N'Đâu là cách khai báo array đúng', 34, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (22, N'<code>echo _____($cars);</code><br>Để lấy độ dài mảng dùng hàm gì', 34, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (23, N'Ý nghĩa hàm rsort()', 34, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (24, N'Ý nghĩa hàm arsort()', 34, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (25, N'Mảng có 2 phần tử. Truy cập vào thứ 2 và thay đổi thành "BMW"', 34, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (26, N'<code>$x = 1;<br>while($x <= 5) {<br>&emsp;&emsp;$x++;<br>}<br>echo $x;</code>Giá trị của x sau vòng lặp', 35, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (27, N'<code>for ($x = 0; $x <= 4; $x++) {<br>&emsp;&emsp;$y = $y + $x; <br>}echo $y</code><br>Giá trị của y', 35, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (28, N'Ý nghĩa lệnh break trong vòng lặp trong PHP', 35, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (29, N'Các loại vòng lặp trong PHP?', 35, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (30, N'Cách thức hoạt động của vòng lặp do-while', 35, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (47, N'Miền giá trị của char trong C?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (48, N'Hàm duy nhất mà tất cả các chương trình C phải có là gì?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (49, N'Hằng (Constant) là gì?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (50, N'Phát biểu nào đúng về hằng (Constant)', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (51, N'Hằng số nguyên 2 byte (int) hệ bát phân là:', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (52, N'Biến là gì?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (53, N'Hàm nào dưới đây chỉ dùng để đọc 1 kí tự từ tệp:', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (54, N'Hàm nào dưới đây chỉ dùng để ghi 1 kí tự vào tệp:', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (55, N'Hàm nào dưới đây dùng để ghi 1 xâu kí tự vào tệp:', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (56, N'Ý nghĩa của dayso[4] = 50;', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (57, N'Phát biểu sai về a[3][4]', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (58, N'So sánh kết quả 2 cách khai báo int a[2][2] = {{0, 1,}, {2, 3}}; và int a[2][2] = {0, 1, 2, 3};', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (59, N'Đâu không phải là ưu điểm của mảng một chiều.', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (60, N'Cho int array[2][2][3] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}; Kết quả array[1][0][2] ?', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (61, N'Khai báo "double a[12]", phần tử a[7] là phần tử thứ bao nhiêu trong mảng a:', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (62, N'Khai báo “int array[3][5]” có nghĩa là:', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (63, N'Giá trị của mảng như sau: int x[3]={4,2,6}; Nghĩa là:', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (64, N'Kích thước của mảng là:', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (65, N'float a [5] = {3.4, 5, 7, 1, 2, 3} đúng hay sai?', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (66, N'Ý nghĩa lệnh break trong vòng lặp trong C++', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (67, N'Ý nghĩa lệnh continue trong vòng lặp trong C++', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (68, N'Có các loại vòng lặp nào trong C++?', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (69, N'Ý nghĩa for( ; ; )', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (70, N'void main()
{
    char s[] = "man"; 
    int i; 
    for(i = 0; s[i]; i++) 
        printf("%c%c%c%c\t", s[i], *(s+i), *(i+s), i[s]); 
    getch();
}', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (71, N'for(int i=2; i<=4; i+=2) { printf(“%2d”,i); }', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (72, N'for(int i=2; ; i++) { printf(“%2d”,i); }', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (73, N'Lệnh nào trong các lệnh sau cho phép đã chuyển tới một nơi nào đó đã được gán nhãn?', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (74, N'Lệnh nào trong các lệnh sau cho phép dừng câu lệnh điều khiển:', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (75, N'int i=1, k=0; for(; i<5; i++) { k++; printf(“%d”,k); }', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (76, N'string myString = "Hello"; Kết quả của myString[1].', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (77, N'string myString = "Hello"; myString[0] = ''J''; Kết quả của myString.', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (78, N'string firstName = "John "; string lastName = "Doe"; string fullName = firstName + lastName;', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (79, N'char c[5] = "abcde"; đúng hay sai?.', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (80, N'Ý nghĩa của strcpy(s1, s2);', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (81, N'Ý nghĩa của strchr(s1, ch);', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (82, N'Chuỗi ký tự là gì?', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (83, N'Đâu là cách khai báo mảng theo con trỏ?', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (84, N'char Chuoi[]="NHap ten than linh: " ; đúng hay sai?', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (85, N'Hàm giúp đổi một ký tự thường thành ký tự hoa?', 4, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (86, N'Truy cập mặc định cho các thành phần của một class là gì?.', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (87, N'Khi design class, dữ liệu được đóng gói, và truy xuất dữ liệu thông qua các phương thức. Hãy chọn câu đúng:', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (88, N'Kích thước của một lớp không có thành viên dữ liệu là bao nhiêu?', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (89, N'Kế thừa cho phép "..." giúp tiết kiệm thời gian phát triển.', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (90, N'Đâu là toán tử tham chiếu?', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (91, N'Thành phần của class được khởi tạo mặc định là public?.', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (92, N'new and delete là toán tử?.', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (93, N'Base class không bao giờ được sử dụng để tạo đối tượng?', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (94, N'C++ là một ngôn ngữ lập trình hướng đối tượng thuần túy?', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (95, N'% = không phải là toán tử trong C ++?', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (96, N'Một biến được gọi là biến toàn cục nếu?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (97, N'Một biến được gọi là một biến địa phương nếu?.', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (98, N'Nếu x là một biến toàn cục và x không phải là một con trỏ thì?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (99, N'Kiểu dữ liệu nào dưới đây được coi là kiểu dữ liệu cơ bản trong ngôn ngữ lập trình C?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (100, N'Xâu định dạng nào dưới đây dùng để in ra một số nguyên hệ 16?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (101, N'Xâu định dạng nào dưới đây dùng để in ra một số nguyên ở hệ 8?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (102, N'Xâu định dạng nào dưới đây dùng để in ra một kí tự?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (103, N'Xâu định dạng nào dưới đây dùng để in ra một xâu kí tự?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (104, N'Xâu định dạng nào dưới đây dùng để in ra một số nguyên dài?.', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (105, N'Xâu định dạng nào dưới đây dùng để in ra địa chỉ của một biến?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (106, N'Sử dụng cách truyền nào trong hàm sẽ không làm thay đổi giá trị của biến?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (107, N'Cho biết giá trị của biểu thức 5>1:', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (108, N'Cho biết giá trị của biểu thức 2+4>2&&4<2 :', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (109, N'Biến con trỏ có thể chứa?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (110, N'Dữ liệu kí tự bao gồm?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (111, N'Nếu hàm được gọi trước khi nó định nghĩa thì điều kiện là gì?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (112, N'Kiểu dữ liệu float có thể xử lí dữ liệu trong phạm vi nào?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (113, N'Kiểu dữ liệu nào dưới đây không được coi là kiểu dữ liệu cơ bản trong ngôn ngữ lập trình C?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (114, N'Giả sử có câu lệnh ch="A". Vậy ch sẽ chứa bao nhiêu byte?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (115, N'Giả sử có câu lệnh ch[]="A". ch chứa bao nhiêu bytes?', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (116, N'Độ ưu tiên đối với các toán tử logic là?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (117, N'Phát biểu nào sau đây không phài là lợi ích của việc dùng hàm?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (118, N'Kết quả in ra màn hình của biểu thức sau là gì:-3+4%5/2?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (119, N'Có các khai báo sau: int x=15; int *p; Muốn p là con trỏ trỏ tới x phải thực hiện lệnh nào?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (120, N'Kí hiệu nào là con trỏ của phẩn tử thứ 3 của màng a có 4 kí tự?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (121, N'Phép cộng 1 con trỏ với một số nuyên sẽ là?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (122, N'Phép trừ 2 con trỏ có cùng kiểu sẽ là?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (123, N'Phép toán 1 ngôi nào dùng để xác định địa chỉ của đối tượng mà con trỏ chỉ tới?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (124, N'Sự hiệu chỉnh các kiểu dữ liệu số học khi tính toán là?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (125, N'Các kí hiệu đặc trưng cho sự tác động lên dữ liệu gọi là?', 8, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (126, N'Hàm alert() dùng để làm gì?', 25, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (127, N'Cách khai báo mảng nào trong JavaScript là đúng?', 25, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (128, N'Trong JavaScript sự kiện OnUnload xảy ra khi nào?', 25, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (129, N'Vòng lặp While là dạng vòng lặp?', 25, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (130, N'Dùng cách nào có thể biết được trình duyệt đang được sử dụng tại máy client?', 25, 1)
GO
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (131, N'Trọng JavaScript hàm parseFloat() dùng để làm gì?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (132, N'JavaScript là ngôn ngữ dịch mã nguồn theo kiểu nào?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (133, N'Ngôn ngữ JavaScript có phân biệt chữ hoa, chữ thường?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (134, N'Nơi bạn có thể đặt code JavaScript trong trang web?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (135, N'JavaScript các các biến dạng nào?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (136, N'Hàm prompt(…) trong JavaScript dùng để làm gì?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (137, N'JavaScript được bắt đầu bằng?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (138, N'Cách nào tạo một hàm trong JavaScript?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (139, N'Vòng lặp (Do … While) là dạng vòng lặp?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (140, N'Thực hiện kiểm tra nếu biến “i” không bằng 5, câu lệnh nào là đúng?', 26, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (141, N'JavaScript là ngôn ngữ xử lý ở đâu?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (142, N'Trong JavaScript sự kiện Onblur thực hiện khi nào?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (143, N'Có những cách nào viết code JavaScript  để chạy trong trang web?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (144, N'Trong JavaScript sự kiện Onclick xảy ra khi nào?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (145, N'Câu lệnh lặp For trong JavaScript có dạng nào sau đây?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (146, N'Trong JavaScript sự kiện Onchange xảy ra khi nào?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (147, N'Sự kiện nào xảy ra khi người dùng kích vào một phần tử HTML trên trang?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (148, N'Trong JavaScript sự kiện OnMouseOver xảy ra khi nào?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (149, N'JavaScript là ngôn ngữ kịch bản có che dấu được mã nguồn không?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (150, N'Cách nào để làm tròn 7.25 tới số nguyên gần nhất trong JavaScript?', 27, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (151, N'Trong JavaScript sự kiện Onload xảy ra khi nào?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (152, N'Trong JavaScript hàm parseInt() dùng để làm gì?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (153, N'Câu lệnh nào đúng thực hiện việc gọi một script từ bên ngoài có tên là “xxx.js”?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (154, N'Thẻ nào của HTML cho phép bạn đặt mã nguồn JavaScript vào trang web?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (155, N'Câu lệnh break kết hợp với vòng lặp để làm gì?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (156, N'Câu lệnh JavaScript nào là đúng để thực hiện thay đổi nội dung trong phần tử HTML bên dưới? <p id=”demo”>ABCDEF.</p>', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (157, N'Câu lệnh nào khai báo một biến trong JavaScript?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (158, N'Cách nào để thêm một comment nhiều dòng trong JavaScript?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (159, N'Làm cách nào để gọi một hàm “myFunction” trong JavaScript?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (160, N'Cách viết câu lệnh IF nào sau đây là đúng?', 28, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (161, N'Thẻ <input type="text"> dùng để làm gì?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (162, N'Thẻ <input type="Password"> dùng để làm gì?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (163, N'Thẻ <textarea ></texterea> dùng để làm gì?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (164, N'Thẻ <input type=”Submit” dùng để làm gì?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (165, N'Thẻ <input type=”Radio” …> dùng để làm gì?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (166, N'Thẻ <input type=”checkbox” …> dùng để làm gì?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (167, N'Thẻ <input type=”button” …> dùng để làm gì?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (168, N'Lệnh lặp for có dạng như thế nào?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (169, N'Vòng lặp (Do.. while) là dạng vòng lặp?', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (170, N'Thẻ <Frameset cols> </frameset>', 29, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (171, N'Thẻ <Frameset rows > </frameset>', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (172, N'Thẻ <Frame src=” duong dan ”>', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (173, N'3 giai đoạn truyền event?', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (174, N'Tất cả các object đều có prototypes.', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (175, N'Giá trị của sum là gì? const sum = eval("10*10+5");', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (176, N'Biến cool_secret sẽ truy cập được trong bao lâu? sessionStorage.setItem("cool_secret", 123);', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (177, N'Output là gì? const obj = { a: "one", b: "two", a: "three" }; console.log(obj);', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (178, N'Ngữ cảnh thực thi global của JavaScript tạo ra 2 thứ cho chúng ta: global object, và từ khóa “this”.', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (179, N'Output là gì? console.log(typeof typeof 1);', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (180, N'Mọi thứ trong JavaScript đều là?', 30, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (181, N'Output là gì? !!null;', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (182, N'Hàm setInterval trả về cái gì? setInterval(() => console.log("Hi"), 1000);', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (183, N'Giá trị trả về là gì? [..."Lydia"];', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (184, N'Output là gì? +true;', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (185, N'Output là gì? !"Lydia";', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (186, N'Output là gì? 1 + "2";', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (187, N'Output là gì? var num = 8; var num = 10; console.log(num);', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (188, N'Output là gì? const numbers = [1, 2, 3]; numbers[10] = 11; console.log(numbers);', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (189, N'Output là gì? !!"";', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (190, N'Output là gì? !!1;', 31, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (191, N'Kết quả là gì? let a = new Date(''2019,1,1'').toLocaleDateString();', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (192, N'Kết quả là gì? const obj = { 1: ''a'', 2: ''b'', 3: ''c'' }; obj.hasOwnProperty(''1'');', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (193, N'Kết quả là gì? const set = new Set([1, 2, 3, 4, 5]); set.has(1);', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (194, N'Kết quả là gì? const a = {}; const b = { key: ''b'' }; a[b] = 123; a[c] = 456; console.log(a[b]);', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (195, N'Đáp án là gì? let b = ''4''; console.log(b++ + 3, b);', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (196, N'Đáp án là gì? console.log(1 < 2 < 3);', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (197, N'Đáp án là gì? console.log(1 > 2 > 3);', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (198, N'Đáp án là gì? const mySet = new Set([{ a: 1 }, { a: 1 }]); const result = [...mySet]; console.log(result);', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (199, N'Đáp án là gì? const map = [''a'', ''b'', ''c''].map.bind([1, 2, 3]); map(el => console.log(el));', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (200, N'Đáp án là gì? console.log(typeof Object, typeof Array, typeof Number);', 32, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (232, N'cau1xxxx', 37, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (233, N'cahoiacvxxxx', 37, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (234, N'cauhoi1', 39, 1)
SET IDENTITY_INSERT [dbo].[DSCauHoi] OFF
SET IDENTITY_INSERT [dbo].[DSDapAn] ON 

INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (5, 47, N'Từ -128 đến 127', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (6, 47, N'Từ -127 đến 127', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (7, 47, N'Từ 0 đến 127', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (8, 47, N'Từ -127 đến 128', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (9, 48, N'start()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (10, 48, N'system()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (11, 48, N'main()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (12, 48, N'program()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (13, 49, N'Là đại lượng tạm của chương trình.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (14, 49, N'Không là một chuỗi ký tự, một ký tự, một con số xác định.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (15, 49, N'Là giá trị khởi tạo mặc định của chương trình.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (16, 49, N'Là đại lượng không đổi trong suốt quá trình thực thi của chương trình.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (17, 50, N'Là đối tượng chỉ cho phép đọc.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (18, 50, N'Là đối tượng chỉ cho phép ghi.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (19, 50, N'Là đối tượng cho phép ghi và đọc.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (20, 50, N'Tất cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (21, 51, N'Là dãy số thuộc từ 0 đến 7.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (22, 51, N'Là kiểu số nguyên (có âm) từ 0 đến 7 để biểu diễn một số nguyên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (23, 51, N'Là kiểu số nguyên từ 1 đến 8 để biểu diễn một số nguyên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (24, 51, N'Là kiểu số nguyên từ 0 đến 7 để biểu diễn một số nguyên.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (25, 52, N'Là một đại lượng được người lập trình định nghĩa và được đặt tên thông qua việc khai báo biến.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (26, 52, N'Không thuộc huộc về một kiểu dữ liệu xác định và có giá trị thuộc kiểu đó.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (27, 52, N'Là một đại lượng được người lập trình định nghĩa và có giá trị không đổi.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (28, 52, N'Là tham số được chương trình định nghĩa để chứa giá trị trong quá trình chạy.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (29, 53, N'getch();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (30, 53, N'fscanf();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (31, 53, N'fgetc();', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (32, 53, N'scanf();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (33, 54, N'putch();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (34, 54, N'puts();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (35, 54, N'fputs();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (36, 54, N'fputc();', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (37, 55, N'putch();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (38, 55, N'fputc();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (39, 55, N'fputs();', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (40, 55, N'puts();', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (41, 56, N'dayso có 4 phần tử và tổng dayso = 50.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (42, 56, N'dayso có 4 phần tử và giá trị thứ 4 là 50.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (43, 56, N'dayso có giá trị thứ 5 trong mảng là 50.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (44, 56, N'dayso có 5 phần tử 0, 1, 2, 3, 4.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (45, 57, N'a là mảng 2 chiều có 3 dòng, 4 cột.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (46, 57, N'a là mảng 2 chiều có 4 dòng, 3 cột.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (47, 57, N'lấy ra giá trị tại vị trí a[3][4] trong mảng 2 chiều.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (48, 57, N'a có 12 phần tử hoặc hơn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (49, 58, N'Giống nhau.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (50, 58, N'Khác nhau.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (51, 59, N'Dễ hiểu và dễ sử dụng: chỉ cần khai báo <kiểu dữ liệu> tên mảng[kích thước].', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (52, 59, N'Kích thước của mảng phải là không phải cố định.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (53, 59, N'Truy cập đến các phần tử trong mảng nhanh.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (54, 59, N'Dễ dàng duyệt qua từng phần tử mảng, thao tác, sắp xếp dữ liệu.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (55, 60, N'6.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (56, 60, N'7.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (57, 60, N'8.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (58, 60, N'9.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (59, 61, N'Thứ 5.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (60, 61, N'Thứ 6.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (61, 61, N'Thứ 7.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (62, 61, N'Thứ 8.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (63, 62, N'Các phần tử của mảng là các số nguyên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (64, 62, N'Là một mảng hai chiều tối đa là 15 phần tử và mỗi phần tử là một số nguyên.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (65, 62, N'array[3][5] là một phần tử của mảng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (66, 62, N'Tất cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (67, 63, N'x[1]=4, x[2]=2, x[3]=6', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (68, 63, N'x[0]=4, x[1]=2, x[2]=6', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (69, 63, N'Khai báo không đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (70, 63, N'Kết quả khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (71, 64, N'Số phần tử tối đa của mảng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (72, 64, N'Kích thước bộ nhớ sẽ cấp phát cho mảng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (73, 64, N'Cả hai câu trên đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (74, 64, N'Cả hai câu trên đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (75, 65, N'Đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (76, 65, N'Sai.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (77, 66, N'Bỏ qua câu lệnh trong cùng vòng lặp.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (78, 66, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (79, 66, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (80, 66, N'Kết thúc vòng lặp hoặc lệnh switch và chuyển sang vòng lặp hoặc lệnh switch ngay sau nó.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (81, 67, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (82, 67, N'Bỏ qua các câu lệnh trong cùng một câu lệnh lặp để thực hiện vòng lặp mới.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (83, 67, N'Truy cập đến các phần tử trong mảng nhanh.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (84, 67, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (85, 68, N'Vòng lặp while.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (86, 68, N'Cả 3 câu kia đều đúng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (87, 68, N'Vòng lặp do...while.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (88, 68, N'Vòng lặp for.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (89, 69, N'Vòng lặp vô hạn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (90, 69, N'Vòng lặp không điều kiện.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (91, 69, N'Lỗi syntax.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (92, 69, N'A, B đều đúng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (93, 70, N'mmmm aaaa nnnn.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (94, 70, N'mmm aaa nnn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (95, 70, N'mmmm aaa nnn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (96, 70, N'Kết quả khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (97, 71, N' 1 2 3 4', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (98, 71, N' 2 3 4', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (99, 71, N' 2 4', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (100, 71, N'Lỗi.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (101, 72, N'Vòng lặp vô hạn.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (102, 72, N' 2', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (103, 72, N' 1  2', 0)
GO
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (104, 72, N'Kết quả khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (105, 73, N'continue', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (106, 73, N'exit', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (107, 73, N'break', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (108, 73, N'goto', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (109, 74, N'continue', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (110, 74, N'goto', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (111, 74, N'break', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (112, 74, N'Tất cả đều đúng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (113, 75, N'4', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (114, 75, N'0', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (115, 75, N'Vòng lặp vô hạn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (116, 75, N'5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (117, 76, N'e', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (118, 76, N'H', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (119, 76, N'0', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (120, 76, N'Tắt cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (121, 77, N'HJllo', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (122, 77, N'Lỗi syntax', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (123, 77, N'Jello', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (124, 77, N'Tắt cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (125, 78, N'Lỗi syntax', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (126, 78, N'JohnDoe', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (127, 78, N'John Doe', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (128, 78, N'Tắt cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (129, 79, N'Sai.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (130, 79, N'Đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (131, 80, N'Sao chép chuỗi s2 cho chuỗi s1.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (132, 80, N'Sao chép chuỗi s1 cho chuỗi s2.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (133, 80, N'Nối chuỗi s2 cho chuỗi s1.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (134, 80, N'Nối chuỗi s1 cho chuỗi s2.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (135, 81, N'Trả về vị trí đầu tiên của ch trong s1.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (136, 81, N'Trả về con trỏ tới vị trí đầu tiên của ch trong s1.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (137, 81, N'Cả 2 câu đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (138, 81, N'Cả 2 câu đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (139, 82, N'Là một dãy gồm các ký tự hoặc một mảng các ký tự được đặt trong cặp dấu nháy kép "".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (140, 82, N'Là một dãy gồm các ký tự hoặc một mảng các ký tự.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (141, 82, N'Là một dãy gồm các ký tự hoặc một mảng các ký tự được kết thúc bằng ký tự ''\0'' (còn được gọi là ký tự NULL trong bảng mã ASCII).', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (142, 82, N'Tất cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (143, 83, N'char *<Biến>', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (144, 83, N'char <Biến>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (145, 83, N'Cả 2 câu đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (146, 83, N'Cả 2 câu đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (147, 84, N'Sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (148, 84, N'Đúng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (149, 85, N'toupper()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (150, 85, N'strupr()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (151, 85, N'strlwr()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (152, 85, N'strcpy()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (153, 86, N'private', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (154, 86, N'protected', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (155, 86, N'public', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (156, 86, N'protect', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (157, 87, N'NULL', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (158, 87, N'0', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (159, 87, N'1', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (160, 87, N'Tất cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (161, 88, N'Do đó, dữ liệu kiểu private và phương thức kiểu public.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (162, 88, N'Do đó, dữ liệu kiểu public và phương thức kiểu private.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (163, 88, N'Do đó, dữ liệu kiểu protected và phương thức kiểu public.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (164, 88, N'Do đó, dữ liệu kiểu public và phương thức kiểu protected.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (165, 89, N'" "', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (166, 89, N'tái sử dụng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (167, 89, N'phát triển', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (168, 89, N'đóng gói', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (169, 90, N'&&', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (170, 90, N'*', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (171, 90, N'**', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (172, 90, N'&', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (173, 91, N'Đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (174, 91, N'Sai', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (175, 92, N'Đúng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (176, 92, N'Sai', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (177, 93, N'Đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (178, 93, N'Sai', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (179, 94, N'Đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (180, 94, N'Sai', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (181, 95, N'Đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (182, 95, N'Sai', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (183, 96, N'Nó được khai báo tất cả các hàm, ngoại trừ hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (184, 96, N'Nó được khai báo ngoài tất cả các hàm kể cả hàm main().', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (185, 96, N'Nó được khai báo bên ngoài hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (186, 96, N'Nó được khai báo bên trong hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (187, 97, N'Nó được khai báo bên trong các hàm hoặc thủ tục, kể cả hàm main().', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (188, 97, N'Nó đươc khai báo bên trong các hàm ngoại trừ hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (189, 97, N'Nó được khai báo bên trong hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (190, 97, N'Nó được khai báo bên ngoài các hàm kể cả hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (191, 98, N'Miền nhớ dành cho x có thể thay đổi trong quá trình thực hiện chương trình.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (192, 98, N'Miền nhớ dành cho x chỉ có thay đổi bởi những thao tác với x bên trong hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (193, 98, N'Miền nhớ dành cho x sẽ thay đổi bởi những thao tác với x trong tất cả các hàm, kể cả hàm main().', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (194, 98, N'Miền nhớ giành cho x không bị thay đổi trong quá trình thực hiện chương trình.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (195, 99, N'Kiểu double.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (196, 99, N'Kiểu con trỏ.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (197, 99, N'Kiểu hợp.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (198, 99, N'Kiểu mảng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (199, 100, N'"%d".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (200, 100, N'"%x".', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (201, 100, N'"%i".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (202, 100, N'"%u".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (203, 101, N'"%ld".', 0)
GO
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (204, 101, N'"%x".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (205, 101, N'"%o".', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (206, 101, N'"%u".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (207, 102, N'"%f".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (208, 102, N'"%x".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (209, 102, N'"%s".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (210, 102, N'"%c".', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (211, 103, N'"%f".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (212, 103, N'"%x".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (213, 103, N'"%s".', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (214, 103, N'"%c".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (215, 104, N'"%ld".', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (216, 104, N'"%x".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (217, 104, N'"%d".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (218, 104, N'"%o".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (219, 105, N'"%u".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (220, 105, N'"%e".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (221, 105, N'"%o".', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (222, 105, N'"%p".', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (223, 106, N'Truyền bằng trị.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (224, 106, N'Truyền bằng giá trị địa chỉ của tham số.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (225, 106, N'Cả a và b đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (226, 106, N'Cả a và b đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (227, 107, N'-1.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (228, 107, N'0.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (229, 107, N'1.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (230, 107, N'Không câu nào đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (231, 108, N'1.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (232, 108, N'0.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (233, 108, N'-1 .', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (234, 108, N'Không câu nào đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (235, 109, N'Địa chỉ vùng nhớ của một biến khác.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (236, 109, N'Giá trị của một biến khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (237, 109, N'Cả a và b đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (238, 109, N'Cả a và b đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (239, 110, N'Các kí tự số chữ số.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (240, 110, N'Các kí tự chữ cái.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (241, 110, N'Các kí tự đặc biệt.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (242, 110, N'Cả a,b và c.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (243, 111, N'Kiểu trả về của hàm phải là kiều void.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (244, 111, N'Kiểu đầu vào của hàm phải là kiểu void.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (245, 111, N'Trước khi gọi hàm nó phải được khai báo.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (246, 111, N'Hàm chỉ trả về kiểu dữ liệu boolean.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (247, 112, N'3.4*10-38đến 3.4*1038.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (248, 112, N'-32768 đến 32767.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (249, 112, N'-128 đến 127.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (250, 112, N'0…65535.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (251, 113, N'Kiểu mảng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (252, 113, N'Kiểu enum.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (253, 113, N'Kiểu short int.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (254, 113, N'Kiểu unsigned.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (255, 114, N'1.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (256, 114, N'2.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (257, 114, N'3.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (258, 114, N'4.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (259, 115, N'1.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (260, 115, N'2.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (261, 115, N'3.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (262, 115, N'4.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (263, 116, N'AND, NOT, OR.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (264, 116, N'NOT, OR, AND.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (265, 116, N'OR, NOT, AND.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (266, 116, N'NOT, AND, OR.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (267, 117, N'Tránh dư thừa, lặp lại nhiều lần một đoạn lệnh.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (268, 117, N'Dễ bảo trì.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (269, 117, N'Khả năng sử dụng lại đoạn lệnh.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (270, 117, N'Tất cả đều sai.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (271, 118, N'-1.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (272, 118, N'-3.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (273, 118, N'1.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (274, 118, N'Kết quả khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (275, 119, N'p=x;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (276, 119, N'p=&x;', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (277, 119, N'p=*x;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (278, 119, N'Tất cả các lệnh đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (279, 120, N'*(a+3);', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (280, 120, N'*(a+2);', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (281, 120, N'*a+3;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (282, 120, N'*(a+4);', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (283, 121, N'Một con trỏ có cùng kiểu.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (284, 121, N'Một số nguyên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (285, 121, N'Cả hai kết quả đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (286, 121, N'Cả hai kết quả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (287, 122, N'Một con trỏ có cùng kiểu.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (288, 122, N'Một số nguyên.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (289, 122, N'Kết quả khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (290, 122, N'Không thực hiện được.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (291, 123, N'*;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (292, 123, N'!;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (293, 123, N'&;', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (294, 123, N'Kết quả khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (295, 124, N'int à long à float à double à long double.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (296, 124, N'int à float à long à double à long double.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (297, 124, N'int à double à float àlong à long double.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (298, 124, N'long à int à float àdouble à long double.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (299, 125, N'Hàm.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (300, 125, N'Biểu thức.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (301, 125, N'Biến.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (302, 125, N'Toán tử.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (360, 16, N'<?php ... ?>', 1)
GO
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (361, 16, N'<?php ... ?php>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (362, 16, N'<?php ... />', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (363, 16, N'<?php .. /php>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (364, 17, N'var x = 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (365, 17, N'int x = 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (366, 17, N'String x = "hello!"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (367, 17, N'$x = 5', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (368, 18, N'$xinChao', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (369, 18, N'echo $xinChao', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (370, 18, N'print $xinChao', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (371, 18, N'Cả B và C đúng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (372, 19, N'Có', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (373, 19, N'Không', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (374, 20, N'str_word_count', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (375, 20, N'strlen', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (376, 20, N'strrev', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (377, 20, N'strpos', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (378, 21, N'$cars = ["Volvo"; "BMW"; "Toyota"];', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (379, 21, N'$cars = {"Volvo", "BMW", "Toyota"};', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (380, 21, N'$cars = ["Volvo", "BMW", "Toyota"];', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (381, 21, N'$cars = array("Volvo", "BMW", "Toyota");', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (382, 22, N'size()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (383, 22, N'length()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (384, 22, N'count()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (385, 22, N'sizeArray()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (386, 23, N'sắp xếp tăng dần', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (387, 23, N'sắp xếp giảm dần', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (388, 23, N'sắp xếp giảm dần theo giá trị', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (389, 23, N'sắp xếp tăng dần theo key', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (390, 24, N'sắp xếp tăng dần', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (391, 24, N'sắp xếp giảm dần', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (392, 24, N'sắp xếp giảm dần theo giá trị', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (393, 24, N'sắp xếp tăng dần theo key', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (394, 25, N'$cars[0] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (395, 25, N'$cars[1] = "BMW";', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (396, 25, N'$cars[2] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (397, 25, N'$cars[3] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (398, 26, N'x = 4', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (399, 26, N'x = 3', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (400, 26, N'x = 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (401, 26, N'x = 6', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (402, 27, N'Không in ra được y', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (403, 27, N'y = 4', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (404, 27, N'y = 6";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (405, 27, N'y = 10";', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (406, 28, N'Bỏ qua câu lệnh trong cùng vòng lặp.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (407, 28, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (408, 28, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (409, 28, N'Kết thúc vòng lặp và chuyển sang vòng lặp ngay sau nó.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (410, 29, N'Các vòng lặp gồm while, do...while, for, foreach', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (411, 29, N'Các vòng lặp gồm while, do...while, for', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (412, 29, N'Các vòng lặp gồm while, for', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (413, 30, N'Thực hiện lệnh trước rồi kiểm tra điều kiện. Nếu sai, thực hiện tiếp công việc.<br>Nếu đúng,thoát khỏi vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (414, 30, N'Kiểm tra điều kiện trước khi lặp. Nếu đúng thực hiện công việc. Nếu sai, không<br>thực hiện công việc hoặc thoát khỏi vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (415, 30, N'Thực hiện lệnh trước rồi kiểm tra điều kiện. Nếu đúng, thực hiện tiếp công việc.<br>Nếu sai,thoát khỏi vòng lặp', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (416, 30, N'Kiểm tra điều kiện trước khi lặp. Nếu sai thực hiện công việc. Nếu đúng, không<br>thực hiện công việc hoặc thoát khỏi vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (417, 126, N'Dùng để hiển thị một thông báo', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (418, 126, N'Dùng để hiển thị một thông báo nhập dữ liệu', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (419, 126, N'Dùng để hiển thị một xác nhận Yes/No', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (420, 126, N'Dùng để chuyển đổi số sang chữ', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (421, 127, N'var colors = 1 = ("red"), 2 = ("green"), 3 = ("blue")', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (422, 127, N'var colors = ["red", "green", "blue"]', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (423, 127, N'var colors = (1:"red", 2:"green", 3:"blue")', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (424, 127, N'var colors = "red", "green", "blue"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (425, 128, N'Khi bắt đầu chạy chương trình', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (426, 128, N'Khi kích chuột', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (427, 128, N'Khi kết thúc một chương trình', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (428, 128, N'Khi di chuyển chuột qua', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (429, 129, N'Không xác định và kiểm tra điều kiện trước', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (430, 129, N'Không xác định và kiểm tra điều kiện sau', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (431, 129, N'Không tôn tại dạng nào ở trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (432, 129, N'Cả hai dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (433, 130, N'client.navName', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (434, 130, N'navigator.appName', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (435, 130, N'browser.name', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (436, 130, N'Tất cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (437, 131, N'Chuyển một chuỗi thành số', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (438, 131, N'Chuyển một chuỗi thành số thực', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (439, 131, N'Chuyển một chuỗi thành số nguyên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (440, 131, N'Chuyển một số nguyên thành chuỗi', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (441, 132, N'Không có dạng nào ở trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (442, 132, N'Biên dịch', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (443, 132, N'Thông dịch', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (444, 132, N'Cả hai dạng biên dịch và thông dịch', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (445, 133, N'Có', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (446, 133, N'Không', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (447, 134, N'Bạn có thể đặt trong phần <head> hoặc <body>', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (448, 134, N'Chỉ trong phần <head>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (449, 134, N'Chỉ trong phần <body>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (450, 134, N'Mọi nơi.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (451, 135, N'Number, String, Boolean, Null', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (452, 135, N'Number, Interger, char', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (453, 135, N'Number, String, Boolean', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (454, 135, N'Tất cả các loại trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (455, 136, N'Cả hai dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (456, 136, N'Hiển thị thông báo nhập thông tin', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (457, 136, N'Không phương án nào đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (458, 136, N'Hiển thị một thông báo Yes, No', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (459, 137, N'Tất cả các dạng trên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (460, 137, N'<java>....</java>', 0)
GO
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (461, 137, N'<Javascript>...<Javascript>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (462, 137, N'<script> ...</script>', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (463, 138, N'function:myFunction()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (464, 138, N'function = myFunction()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (465, 138, N'function myFunction()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (466, 138, N'Tất cả đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (467, 139, N'Không xác định và kiểm tra điều kiện trước khi lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (468, 139, N'Không xác định và kiểm tra điều kiện sau khi lặp', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (469, 139, N'Cả hai dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (470, 139, N'Không phương án nào đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (471, 140, N'if i <> 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (472, 140, N'if i =! 5 then', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (473, 140, N'if (i != 5)', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (474, 140, N'if (i <> 5)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (475, 141, N'Client', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (476, 141, N'Server', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (477, 141, N'Cả server và client', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (478, 141, N'Không ở dạng nào', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (479, 142, N'Khi di chuyển chuột vào nút lệnh', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (480, 142, N'Khi một đối tượng trong form nhận focus', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (481, 142, N'Khi di chuyển con chuột qua form', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (482, 142, N'Khi một đối tượng trong form mất focus', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (483, 143, N'Viết trên một tệp riêng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (484, 143, N'Không thuộc dạng nào', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (485, 143, N'Viết chung với HTML', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (486, 143, N'Cả hai dạng viết tệp riêng hoặc viết trong trang HTML', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (487, 144, N'Khi một đối tượng trong form mất focus', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (488, 144, N'Khi một đối tượng trong form nhận focus', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (489, 144, N'Khi click chuột vào một đối tượng trong form', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (490, 144, N'Khi click chuột vào nút lệnh', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (491, 145, N'Tất cả các dạng trên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (492, 145, N'for ( biến = Giá trị đầu; Giá trị tăng; điều kiện)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (493, 145, N'for ( biến = Điều kiện; Giá trị tăng; Giá trị cuối)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (494, 145, N'for ( biến = Giá trị đầu; Điều kiện; Giá trị tăng)', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (495, 146, N'Khi một đối tượng trong form nhận focus', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (496, 146, N'Khi kích chuột vào nút lệnh', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (497, 146, N'Khi một đối tượng trong form mất focus', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (498, 146, N'Xảy ra khi giá trị của một trường trong form được người dùng thay đổi dữ liệu', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (499, 147, N'onmouseclick', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (500, 147, N'onclick', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (501, 147, N'onmouseover', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (502, 147, N'onchange', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (503, 148, N'Khi một đối tượng trong form mất focus', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (504, 148, N'Khi một đối tượng trong form nhận focus', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (505, 148, N'Khi di chuyển con chuột qua một đối tượng trong form', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (506, 148, N'Khi kích chuột vào nút lệnh', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (507, 149, N'Không dấu được vì các kịch bản chạy phía client.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (508, 149, N'Dấu được vì chương trình hoạt động độc lập với trình duyệt', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (509, 149, N'Hai phát biểu trên đều sai', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (510, 149, N'Hai phát biểu trên đều đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (511, 150, N'rnd(7.25)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (512, 150, N'round(7.25)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (513, 150, N'Math.round(7.25)', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (514, 150, N'Math.rnd(7.25)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (515, 151, N'Khi di chuyển chuột qua', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (516, 151, N'Khi kết thúc một chương trình', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (517, 151, N'Khi click chuột', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (518, 151, N'Khi bắt đầu chạy chương trình', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (519, 152, N'Chuyển một chuỗi thành số', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (520, 152, N'Chuyển một chuỗi thành số nguyên', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (521, 152, N'Chuyển một chuỗi thành số thực', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (522, 152, N'Chuyển một số nguyên thành một chuỗi', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (523, 153, N'<script name="xxx.js">', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (524, 153, N'<script src="xxx.js">', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (525, 153, N'<script href="xxx.js">', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (526, 153, N'Tất cả đều sai.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (527, 154, N'<js>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (528, 154, N'<javascript>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (529, 154, N'<script>', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (530, 154, N'<scripting>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (531, 155, N'Không có ý nghĩa gì trong vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (532, 155, N'Không thể kết hợp được', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (533, 155, N'Ngưng vòng lặp nếu gặp lệnh này', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (534, 155, N'Nhảy đến một tập lệnh khác', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (535, 156, N'document.getElementByName("p").innerHTML = "ABCXYZ!";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (536, 156, N'#demo.innerHTML = "ABCXYZ!";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (537, 156, N'document.getElementById("demo").innerHTML = "ABCXYZ!";', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (538, 156, N'document.getElement("p").innerHTML = "ABCXYZ!";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (539, 157, N'var carName;', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (540, 157, N'var *carName;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (541, 157, N'variable carName;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (542, 157, N'v carName;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (543, 158, N'<!--Đây là một comment trên nhiều dòng-->', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (544, 158, N'//Đây là một comment trên nhiều dòng//', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (545, 158, N'/*Đây là một comment trên nhiều dòng*/', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (546, 158, N'Tất cả đều đúng.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (547, 159, N'call function myFunction()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (548, 159, N'myFunction()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (549, 159, N'call myFunction()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (550, 159, N'self.myFunction()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (551, 160, N'if i = 5 then', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (552, 160, N'if i = 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (553, 160, N'if (i == 5)', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (554, 160, N'if i == 5 then', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (555, 161, N'Tạo một ô text để nhập dữ liệu 1 dòng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (556, 161, N'Tạo một ô password', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (557, 161, N'Tạo một  textbox cho phép nhập liệu nhiều dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (558, 161, N'Tất cả các ý trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (559, 162, N'Tạo một ô text để nhập dữ liệu 1 dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (560, 162, N'Tạo một ô password', 1)
GO
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (561, 162, N'Tạo một  textbox cho phép nhập liệu nhiều dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (562, 162, N'Tất cả các ý trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (563, 163, N'Tạo một ô text để nhập dữ liệu 1 dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (564, 163, N'Tạo một ô password', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (565, 163, N'Tạo một  textbox cho phép nhập liệu nhiều dòng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (566, 163, N'Tất cả các ý trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (567, 164, N'Tạo một ô text để nhập dữ liệu', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (568, 164, N'Tạo một nút lệnh dùng để gửi tin trong form đi', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (569, 164, N'Tạo một nút lệnh dùng để xóa thông tin trong form', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (570, 164, N'Tất cả các ý trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (571, 165, N'Tạo một ô text để nhập dữ liệu', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (572, 165, N'Tạo một nhóm đối tượng chọn nhưng  chọn duy nhất', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (573, 165, N'Tạo một  cùng có nhiều cột nhiều dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (574, 165, N'Tất cả các ý trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (575, 166, N'Tạo một ô text để nhập dữ liệu', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (576, 166, N'Tạo một nhóm đối tượng chọn được nhiều đối tượng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (577, 166, N'Tạo một  cùng có nhiều cột nhiều dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (578, 166, N'Tất cả ý trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (579, 167, N'Tạo một ô text để nhập dữ liệu', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (580, 167, N'Tạo một nút lệnh lên trên form', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (581, 167, N'Tạo một  cùng có nhiều cột nhiều dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (582, 167, N'Tất cả ý kiến trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (583, 168, N'for ( biến = Giá trị đầu; Điều kiện; Giá trị tăng)', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (584, 168, N'for ( biến = Giá trị đầu; Giá trị tăng; điều kiện)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (585, 168, N'for ( biến = Điều kiện; Giá trị tăng; Giá trị cuối)', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (586, 168, N'Tất cả các dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (587, 169, N'Không xác định và xét điều kiện rồi mới lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (588, 169, N'Không xác định và lặp rồi mới xét điều kiện', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (589, 169, N'Cả hai dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (590, 169, N'Không có dạng nào', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (591, 170, N'Dùng để chia trang web ra nhiều phần theo cột', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (592, 170, N'Dùng để chia trang web ra nhiều phần theo dòng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (593, 170, N'Tất cả dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (594, 170, N'Không có ý nào ở trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (595, 171, N'Dùng để chia trang web ra nhiều phần theo cột', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (596, 171, N'Dùng để chia trang web ra nhiều phần theo dòng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (597, 171, N'Tất cả dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (598, 171, N'Không có ý nào ở trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (599, 172, N'Dùng để chèn ảnh', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (600, 172, N'Dùng để lấy dữ liệu từ một trang khác', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (601, 172, N'Tất cả dạng trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (602, 172, N'Không có ý nào trong các ý trên', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (603, 173, N'Target > Capturing > Bubbling', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (604, 173, N'Bubbling > Target > Capturing', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (605, 173, N'Target > Bubbling > Capturing', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (606, 173, N'Capturing > Target > Bubbling', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (607, 174, N'đúng', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (608, 174, N'sai', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (609, 175, N'105', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (610, 175, N'"105"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (611, 175, N'TypeError', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (612, 175, N'"10*10+5"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (613, 176, N'Mãi mãi, dữ liệu sẽ không bao giờ mất.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (614, 176, N'Khi user đóng tab lại.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (615, 176, N'Khi user không chỉ là đóng tab, mà đóng browser lại.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (616, 176, N'Khi user tắt máy tính đi.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (617, 177, N'{ a: "one", b: "two" }', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (618, 177, N'{ b: "two", a: "three" }', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (619, 177, N'{ a: "three", b: "two" }', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (620, 177, N'SyntaxError', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (621, 178, N'đúng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (622, 178, N'sai', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (623, 179, N'"number"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (624, 179, N'"string"', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (625, 179, N'"object"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (626, 179, N'"undefined"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (627, 180, N'primitives hoặc object', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (628, 180, N'function hoặc object', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (629, 180, N'hỏi mẹo khó đấy! chỉ object thôi', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (630, 180, N'number hoặc object', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (631, 181, N'True', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (632, 181, N'False', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (633, 182, N'một id duy nhất', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (634, 182, N'số lượng milliseconds', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (635, 182, N'function truyền vào', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (636, 182, N'undefined', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (637, 183, N'["L", "y", "d", "i", "a"]', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (638, 183, N'["Lydia"]', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (639, 183, N'[[], "Lydia"]', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (640, 183, N'[["L", "y", "d", "i", "a"]]', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (641, 184, N'1', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (642, 184, N'0', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (643, 185, N'False', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (644, 185, N'True', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (645, 186, N'NaN', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (646, 186, N'TypeError', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (647, 186, N'"12"', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (648, 186, N'3', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (649, 187, N'8', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (650, 187, N'10', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (651, 187, N'SyntaxError', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (652, 187, N'ReferenceError', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (653, 188, N'[1, 2, 3, 7 x null, 11]', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (654, 188, N'[1, 2, 3, 11]', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (655, 188, N'[1, 2, 3, 7 x empty, 11]', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (656, 188, N'SyntaxError', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (657, 189, N'True', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (658, 189, N'False', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (659, 190, N'True', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (660, 190, N'False', 0)
GO
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (661, 191, N'1/1/2019', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (662, 191, N'2019/1/1', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (663, 192, N'True', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (664, 192, N'False', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (665, 193, N'True', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (666, 193, N'False', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (667, 194, N'123', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (668, 194, N'456', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (669, 194, N'undefined', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (670, 194, N'ReferenceError', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (671, 195, N'44 4', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (672, 195, N'8 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (673, 195, N'7 5', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (674, 195, N'43 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (675, 196, N'True', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (676, 196, N'False', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (677, 197, N'True', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (678, 197, N'False', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (679, 198, N'[{a: 1}, {a: 1}]', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (680, 198, N'[{a: 1}]', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (681, 199, N'1 2 3', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (682, 199, N'a b c', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (683, 200, N'object array number', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (684, 200, N'object object number', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (685, 200, N'object object object', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (686, 200, N'function function function', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (702, 232, N'xxx', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (703, 233, N'tl1', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (705, 233, N'fasdfads', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (706, 234, N'dap1', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (707, 234, N'dâpn2', 0)
SET IDENTITY_INSERT [dbo].[DSDapAn] OFF
SET IDENTITY_INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ON 

INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (1, 1, 3)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (2, 1, 5)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (3, 1, 9)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (4, 2, 3)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (5, 2, 5)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (6, 4, 1)
SET IDENTITY_INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[DSThongBao] ON 

INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (2, 1, N'Hay moi nhung nguoi ban cua ban cung tham gia khoa hoc.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (3, 2, N'Con rat nhieu khoa hoc bo ich. Hay dang ky them de duoc trai nghiem.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (4, 2, N'Hay moi nhung nguoi ban cua ban cung tham gia khoa hoc.', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (5, 3, N'Con rat nhieu khoa hoc bo ich. Hay dang ky them de duoc trai nghiem.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (6, 3, N'Hay moi nhung nguoi ban cua ban cung tham gia khoa hoc.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (7, 3, N'Dang co nhung bai hoc bo ich cho don ban.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (8, 3, N'Hay moi ban be cung tham gia tra loi cau hoi.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (9, 4, N'Ban be cua ban dang co diem so rat tot. Hay co gang len nhe.', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (10, 4, N'Khoa hoc ReactJs se la lua chon thu vi cho ban day.', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (11, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (12, 4, N'Bạn có thông báo kết bạn mới từ user2', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (13, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (14, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (15, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (16, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (17, 3, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (18, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (19, 2, N'Bạn có thông báo kết bạn mới từ user1', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (20, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (21, 3, N'Bạn có thông báo kết bạn mới từ user1', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (22, 1, N'Bạn có thông báo kết bạn mới từ user3', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (23, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (24, 1, N'Bạn có thông báo kết bạn mới từ user2', 1)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (25, 3, N'Bạn có thông báo kết bạn mới từ user1', 0)
INSERT [dbo].[DSThongBao] ([id], [idaccount], [thongbao], [docthongbao]) VALUES (26, 1, N'user3đã đồng ý kết bạn với bạn, giờ 2 người có theo dõi nhau', 0)
SET IDENTITY_INSERT [dbo].[DSThongBao] OFF
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] ON 

INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (31, 1, 2, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (32, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] OFF
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON 

INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (1, N'SQL', N'https://phanmemmoi.com/wp-content/uploads/SQL-Server.png')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (2, N'C#', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEQm0locnJ2Lvz-cmdHlDxpgYEYZNV4-VermFgZmYVGRhM_Lfr&s')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (3, N'C/C++ ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsounbNTcpyrBmXd_L310tWQAAB0_yEpX9YQ_459uQj8CXeixl&s')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (4, N'Angular ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnmJqfQENKuNadc6EkQHjb_beAzFGwii3WMCr_7p70nELSf0Oj&s')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (5, N'Html/Css', N'https://vnypc.files.wordpress.com/2016/11/html_css.jpg')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (6, N'JavaScript', N'https://cdn.pixabay.com/photo/2015/04/23/17/41/javascript-736401_960_720.png')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (7, N'PHP', N'https://freetuts.net/upload/tut_cate/images/2015/12/13/1/hoc-php-lap-trinh-php.gif')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (8, N'ReactJs', N'https://pbs.twimg.com/profile_images/688801955020435456/JqsEWy2Z.png')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (9, N'VueJs', N'https://techtalk.vn/wp-content/uploads/2017/06/vuejs-logo-696x425.jpg')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (10, N'TypeScript', N'https://miro.medium.com/max/816/1*mn6bOs7s6Qbao15PMNRyOA.png')
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] ON 

INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (1, 30)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (2, 65)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (3, 95)
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] OFF
SET IDENTITY_INSERT [dbo].[PhanHoi] ON 

INSERT [dbo].[PhanHoi] ([id], [email], [noidung], [trangthai]) VALUES (1, N'huynhquangminh.cse@gmail.com', N'noi dung', 0)
SET IDENTITY_INSERT [dbo].[PhanHoi] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img], [typeAccount]) VALUES (1, N'user1', N'1234', N'user1@gmail', N'xxxx', 0)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img], [typeAccount]) VALUES (2, N'user2', N'1234', N'user2@gmail', N'xxx', 0)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img], [typeAccount]) VALUES (3, N'user3', N'1234', NULL, NULL, 0)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img], [typeAccount]) VALUES (4, N'user4', N'1234', NULL, NULL, 0)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img], [typeAccount]) VALUES (7, N'admin1', N'1234', N'admin1@gmail.com', N'xxxx', 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] ON 

INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan], [ngayhoc]) VALUES (1, 3, 1, 2, 0, 3, CAST(N'2020-02-09' AS Date))
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan], [ngayhoc]) VALUES (2, 3, 1, 2, 0, 2, CAST(N'2020-02-09' AS Date))
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan], [ngayhoc]) VALUES (3, 3, 1, 1, 0, 4, CAST(N'2020-02-09' AS Date))
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan], [ngayhoc]) VALUES (14, 3, 1, 1, 12, 1, CAST(N'2020-02-09' AS Date))
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] OFF
ALTER TABLE [dbo].[BieuDoTheoDoi]  WITH CHECK ADD  CONSTRAINT [FK_BieuDoTheoDoi_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[BieuDoTheoDoi] CHECK CONSTRAINT [FK_BieuDoTheoDoi_TaiKhoan]
GO
ALTER TABLE [dbo].[DSBaiHoc]  WITH NOCHECK ADD  CONSTRAINT [FK_DSBaiHoc_KhoaHoc] FOREIGN KEY([idkhoahoc])
REFERENCES [dbo].[KhoaHoc] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DSBaiHoc] CHECK CONSTRAINT [FK_DSBaiHoc_KhoaHoc]
GO
ALTER TABLE [dbo].[DSBaiHocPass_Of_TaiKhoan]  WITH NOCHECK ADD  CONSTRAINT [FK_DSBaiHocPass_Of_TaiKhoan_ThongTinTaiKhoan] FOREIGN KEY([idTTTaiKhoan])
REFERENCES [dbo].[ThongTinTaiKhoan] ([id])
ON DELETE CASCADE
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
ALTER TABLE [dbo].[DSCauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_DSCauHoi_DSBaiHoc] FOREIGN KEY([idbaihoc])
REFERENCES [dbo].[DSBaiHoc] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DSCauHoi] CHECK CONSTRAINT [FK_DSCauHoi_DSBaiHoc]
GO
ALTER TABLE [dbo].[DSDapAn]  WITH NOCHECK ADD  CONSTRAINT [FK_DSDapAn_DSCauHoi] FOREIGN KEY([idcauhoi])
REFERENCES [dbo].[DSCauHoi] ([id])
ON DELETE CASCADE
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
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH NOCHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_KhoaHoc] FOREIGN KEY([idkhoahoc])
REFERENCES [dbo].[KhoaHoc] ([id])
ON DELETE CASCADE
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
/****** Object:  StoredProcedure [dbo].[ACCOUNT_LOGIN]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ACCOUNT_LOGIN] (
	@user varchar(100),
	@pass varchar(100)
)
AS BEGIN 
	SELECT TOP 1 id, username, [password], img, email, typeAccount
	FROM TaiKhoan 
	WHERE username = @user AND [password] = @pass 
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_BaiHocById]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Delete_BaiHocById](@id int)
AS BEGIN
	DELETE DSBaiHoc WHERE id = @id
END

GO
/****** Object:  StoredProcedure [dbo].[Delete_BaiHocByIdKhoaHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Delete_BaiHocByIdKhoaHoc](@idKhoaHoc int)
AS BEGIN
	DELETE DSBaiHoc WHERE idkhoahoc = @idKhoaHoc
END

GO
/****** Object:  StoredProcedure [dbo].[Delete_BanBe]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Delete_BanBe] ( @idbanbe int, @idaccount int)
AS BEGIN
	DELETE DSBanBe WHERE idbanbe = @idbanbe AND idaccount = @idaccount 
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_CauHoiById]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Delete_CauHoiById](@id int)
AS BEGIN
	DELETE DSCauHoi WHERE id = @id
END

GO
/****** Object:  StoredProcedure [dbo].[Delete_CauHoiByIdBaiHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Delete_CauHoiByIdBaiHoc](@idbaihoc int)
AS BEGIN
	DELETE DSCauHoi WHERE idbaihoc = @idBaiHoc
END

GO
/****** Object:  StoredProcedure [dbo].[Delete_DapAnById]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Delete_DapAnById](@id int)
AS BEGIN
	DELETE DSDapAn WHERE id = @id
END

GO
/****** Object:  StoredProcedure [dbo].[Delete_DapAnByIdCauHoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Delete_DapAnByIdCauHoi](@idcauhoi int)
AS BEGIN
	DELETE DSDapAn WHERE idcauhoi = @idcauhoi
END

GO
/****** Object:  StoredProcedure [dbo].[Delete_KhoaHocById]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Delete_KhoaHocById](@id int)
AS BEGIN
	DELETE KhoaHoc WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_TaiKhoan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETE_TaiKhoan] (@idTaikhoan int )
AS BEGIN 
	DELETE TaiKhoan WHERE id = @idTaikhoan
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_YeuCauKetBan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Delete_YeuCauKetBan] ( @idbanbe int, @idaccount int)
AS BEGIN
	DELETE DSYeuCauKetBan WHERE idbanbe = @idbanbe AND idaccount = @idaccount AND yeucau = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Get_all_account_same_khoahoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_all_account_same_khoahoc] (@idTaiKhoan int,@idKhoaHoc int)
AS BEGIN 
SELECT tk.id, tk.username, tk.img
	FROM TaiKhoan tk, ThongTinTaiKhoan tttk
	WHERE tk.id != @idTaiKhoan AND tk.id = tttk.idtaikhoan And tttk.idkhoahoc = @idKhoaHoc AND tk.id not in  (SELECT idbanbe FROM DSBanBe WHERE tk.id = idbanbe and yeucau = 1 and idaccount = @idTaiKhoan) and tk.id not in (SELECT idaccount FROM DSYeuCauKetBan WHERE tk.id = idaccount and idbanbe = @idTaiKhoan )
END	
GO
/****** Object:  StoredProcedure [dbo].[GET_ALL_TaiKhoan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_ALL_TaiKhoan]
AS BEGIN 
	SELECT id, username, [password], email, img
	FROM TaiKhoan
	WHERE typeAccount = 0
END
GO
/****** Object:  StoredProcedure [dbo].[GET_BieuDoTheoDoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_BieuDoTheoDoi](@idTaikhoan int)
AS BEGIN 
	SELECT id, idTaikhoan, Thu2, Thu3, Thu4, Thu5, Thu6, Thu7, ChuNhat,TongDiemKN, NgayBatDau
	FROM BieuDoTheoDoi
	WHERE idTaikhoan = @idTaikhoan
END
GO
/****** Object:  StoredProcedure [dbo].[Get_CapDo]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_CauHoi_ById]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_CauHoi_ById] (@idCauHoi int)
AS BEGIN 
	SELECT id, tencauhoi, idbaihoc, idcapdo
	FROM DSCauHoi
	WHERE id = @idCauHoi
END
GO
/****** Object:  StoredProcedure [dbo].[Get_DapAn_ByIdCauHoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DapAn_ByIdCauHoi] (@idCauHoi int)
AS BEGIN
	SELECT id, idcauhoi, cautraloi, dapan
	FROM DSDapAn
	WHERE idcauhoi = @idCauHoi 
END 
GO
/****** Object:  StoredProcedure [dbo].[Get_DiemPerThang]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DiemPerThang](@idTaikhoan int, @idKhoaHoc int, @NgayHienTai date)
AS BEGIN
	DECLARE @dauThang Date,
			@cuoiThang Date
			
	SET @dauThang = DATEADD(DAY,1,EOMONTH(@NgayHienTai,-1))
	SET @cuoiThang = EOMONTH(@NgayHienTai)

	SELECT COALESCE(SUM(diemKNDay), 0) AS 'diem/thang' 
	FROM ThongTinTaiKhoan
	WHERE ngayhoc BETWEEN @dauThang AND @cuoiThang
 	AND idtaikhoan = @idTaikhoan AND idkhoahoc = @idKhoaHoc
END
GO
/****** Object:  StoredProcedure [dbo].[Get_DSBaiHoc_ById]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DSBaiHoc_ById] (
	@idKhoaHoc int
) 
AS BEGIN 
	SELECT id, tenbaihoc, idkhoahoc
	FROM DSBaiHoc
	WHERE idkhoahoc = @idKhoaHoc
END
GO
/****** Object:  StoredProcedure [dbo].[Get_DSBaiHocPass]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DSBaiHocPass](@idTTTaiKhoan int)
AS BEGIN
	SELECT id, idTTTaiKhoan, idBaiHoc
	FROM DSBaiHocPass_Of_TaiKhoan
	WHERE idTTTaiKhoan = @idTTTaiKhoan 
END
GO
/****** Object:  StoredProcedure [dbo].[Get_DSBanBe_By_IdAccount]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DSBanBe_By_IdAccount](@idAccount int)
AS BEGIN
	SELECT be.id, be.idbanbe, be.idaccount, be.yeucau, tk.username, tk.img, (SELECT SUM(Thu2 + Thu3 + Thu4 + Thu5 + Thu6 + Thu7 + ChuNhat) as DiemTuan
																			FROM BieuDoTheoDoi
																			WHERE idTaiKhoan = be.idbanbe) as diemtuan,  
																			(SELECT TongDiemKN
																			FROM BieuDoTheoDoi
																			WHERE idTaiKhoan = be.idbanbe) as tongdiemkn
	FROM DSBanBe be, TaiKhoan tk
	WHERE be.idaccount = @idAccount AND be.idbanbe = tk.id
END
GO
/****** Object:  StoredProcedure [dbo].[GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo](@idBaiHoc int, @idCapDo int)
AS BEGIN 
	SELECT cauhoi.id, cauhoi.tencauhoi, idbaihoc
	FROM DSCauHoi cauhoi
	WHERE cauhoi.idcapdo = @idCapDo AND cauhoi.idbaihoc = @idBaiHoc
END
GO
/****** Object:  StoredProcedure [dbo].[GET_DSDapAn_Follow_IdBaiHoc_IdCapDo]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GET_DSDapAn_Follow_IdBaiHoc_IdCapDo](@idBaiHoc int, @idCapDo int)
AS BEGIN 
	SELECT id, idcauhoi, cautraloi, dapan
	FROM DSDapAn
	WHERE idcauhoi IN (SELECT ID 
						FROM DSCauHoi 
						WHERE idbaihoc = @idBaiHoc AND idcapdo = @idcapdo
						GROUP BY ID)
END

GO
/****** Object:  StoredProcedure [dbo].[Get_DSKhoaHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GET_DSKhoaHocPass_By_IdTTTaiKhoan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_DSKhoaHocPass_By_IdTTTaiKhoan](@idTTTaiKhoan int)
AS BEGIN 
	SELECT id, idTTTaiKhoan, idKhoaHoc
	FROM DSKhoaHocPass_Of_TaiKhoan
	WHERE idTTTaiKhoan = @idTTTaiKhoan
END
GO
/****** Object:  StoredProcedure [dbo].[GET_DSThongBao]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_DSThongBao](@idaccount int)
AS BEGIN 
	SELECT id, idaccount, thongbao, docthongbao
	FROM DSThongBao
	WHERE idaccount = @idaccount AND docthongbao = 0
END

GO
/****** Object:  StoredProcedure [dbo].[Get_DsYeuCauKetBan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Get_DsYeuCauKetBan](@idAccount int)
AS BEGIN
	SELECT yc.id, yc.idaccount, yc.idbanbe, tk.username, tk.img
	FROM DSYeuCauKetBan yc, TaiKhoan tk
	WHERE yc.idaccount = @idAccount AND yc.yeucau = 0 AND yc.idbanbe = tk.id 
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LoaiDiemKinhNghiem]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GET_THONGTINTAIKHOAN]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_THONGTINTAIKHOAN] (@idTaikhoan int)
AS
BEGIN
	SELECT TOP 1 id, idkhoahoc, idcapdo, diemKN, diemKNDay, idtaikhoan, ngayhoc
	FROM ThongTinTaiKhoan 
	WHERE idtaikhoan = @idTaikhoan 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_ACCOUNT]    Script Date: 2/9/2020 9:55:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_BanBe]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_BanBe] (@idaccount int, @idbanbe int, @yeucau bit)
AS BEGIN
	 INSERT INTO DSBanBe ( idbanbe, idaccount, yeucau )
	 VALUES (@idaccount, @idbanbe, @yeucau)
	 INSERT INTO DSBanBe (idaccount,idbanbe , yeucau )
	 VALUES (@idaccount, @idbanbe, @yeucau)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_DSBaiHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_DSBaiHoc](@tenbaihoc nvarchar(100), @idkhoahoc int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM KhoaHoc WHERE id = @idkhoahoc)
	BEGIN
		INSERT INTO DSBaiHoc(tenbaihoc, idkhoahoc) 
		VALUES (@tenbaihoc, @idkhoahoc)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_DSCauHoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_DSCauHoi](@tencauhoi nvarchar(MAX), @idbaihoc int, @idcapdo int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSBaiHoc WHERE id = @idbaihoc) AND EXISTS (SELECT 1 FROM CapDo WHERE id = @idcapdo)
	BEGIN
		INSERT INTO DSCauHoi(tencauhoi, idbaihoc, idcapdo)
		VALUES (@tencauhoi, @idbaihoc, @idcapdo)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_DSDapAn]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_DSDapAn](@idcauhoi int, @cautraloi nvarchar(MAX), @dapan bit)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSCauHoi WHERE id = @idcauhoi)
	BEGIN
		INSERT INTO DSDapAn(idcauhoi, cautraloi, dapan)
		VALUES (@idcauhoi, @cautraloi, @dapan)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_KhoaHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_KhoaHoc](@tenkhoahoc nvarchar(500), @imgKhoaHoc varchar(max))
AS BEGIN
	IF NOT EXISTS (SELECT 1 FROM KhoaHoc WHERE tenkhoahoc = @tenkhoahoc)
	BEGIN
		INSERT INTO KhoaHoc(tenkhoahoc, imgKhoaHoc)
		VALUES (@tenkhoahoc, @imgKhoaHoc)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_OR_UPDATE_BieuDoTheoDoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERT_OR_UPDATE_BieuDoTheoDoi](
	@idTaikhoan int,
	@Thu2 int,
	@Thu3 int, 
	@Thu4 int, 
	@Thu5 int, 
	@Thu6 int, 
	@Thu7 int, 
	@ChuNhat int,
	@DiemTong int,
	@NgayHienTai date
)
AS BEGIN 
	-- set ngày đầu tuần là thứ 2
	SET DATEFIRST 1 ;
	--CONSTANT
	DECLARE @MONDAY int = 1;
	DECLARE @TUESDAY int = 2;
	DECLARE @WEDNESDAY int = 3;
	DECLARE @THURSDAY int = 4;
	DECLARE @FRIDAY int = 5;
	DECLARE @SATURDAY int = 6;
	DECLARE @SUNDAY int = 7;

	DECLARE @CurDayOfWeek int = DATEPART(weekday, @NgayHienTai);

	--INSERT
	IF NOT EXISTS  (SELECT * From BieuDoTheoDoi WHERE idTaikhoan = @idTaikhoan)
	BEGIN
		DECLARE @NgayDauTuan date = @NgayHienTai;
		
		IF (@CurDayOfWeek <> @MONDAY)
			SET @NgayDauTuan = DATEADD(day, -(@CurDayOfWeek-1), @NgayHienTai);

		INSERT INTO BieuDoTheoDoi (idTaikhoan, Thu2, Thu3, Thu4, Thu5, Thu6, Thu7, ChuNhat,TongDiemKN, NgayBatDau) 
							VALUES (@idTaikhoan,@Thu2,@Thu3,@Thu4,@Thu5,@Thu6, @Thu7, @ChuNhat,@DiemTong, @NgayDauTuan)
	END

	--UPDATE
	ELSE
	BEGIN
		DECLARE @NgayDauTuanDB date;
		SET @NgayDauTuanDB = (SELECT NgayBatDau FROM BieuDoTheoDoi WHERE idTaikhoan = @idTaikhoan);

		IF DATEDIFF (day, @NgayDauTuanDB, @NgayHienTai) >= 7
		BEGIN
			SET @NgayDauTuanDB = DATEADD(day, -(@CurDayOfWeek-1), @NgayHienTai);
		
			SET @Thu2 = CASE @CurDayOfWeek WHEN @MONDAY THEN @Thu2
						ELSE 0 END

			SET @Thu3 = CASE @CurDayOfWeek WHEN @TUESDAY THEN @Thu3
						ELSE 0 END

			SET @Thu4 = CASE @CurDayOfWeek WHEN @WEDNESDAY THEN @Thu4
						ELSE 0 END

			SET @Thu5 = CASE @CurDayOfWeek WHEN @THURSDAY THEN @Thu5
						ELSE 0 END

			SET @Thu6 = CASE @CurDayOfWeek WHEN @FRIDAY THEN @Thu6
						ELSE 0 END

			SET @Thu7 = CASE @CurDayOfWeek WHEN @SATURDAY THEN @Thu7
						ELSE 0 END

			SET @ChuNhat =	CASE @CurDayOfWeek WHEN @SUNDAY THEN @ChuNhat
							ELSE 0 END

			UPDATE BieuDoTheoDoi 
			SET Thu2 = @Thu2, Thu3 = @Thu3, Thu4 = @Thu4, Thu5 = @Thu5, Thu6 = @Thu6,
				Thu7 = @Thu7, ChuNhat = @ChuNhat, NgayBatDau = @NgayDauTuanDB, TongDiemKN = @DiemTong
			WHERE idTaikhoan = @idTaikhoan
		END
		ELSE
		BEGIN
			UPDATE BieuDoTheoDoi 
			SET Thu2 = @Thu2, Thu3 = @Thu3, Thu4 = @Thu4, Thu5 = @Thu5, 
				Thu6 = @Thu6, Thu7 = @Thu7, ChuNhat = @ChuNhat, TongDiemKN = @DiemTong
			WHERE idTaikhoan = @idTaikhoan
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_PhanHoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_PhanHoi] 
(
	@email varchar(100),
	@noidung nvarchar(max)
) 
AS BEGIN
	INSERT INTO PhanHoi (email, noidung, trangthai)
	VALUES( @email, @noidung, 0) 
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_ThongBaoByIdAccount]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_ThongBaoByIdAccount] (
	@idaccount int,
	@thongbao nvarchar(max)
) AS 
BEGIN 
	INSERT INTO DSThongBao (idaccount, thongbao, docthongbao)
	VALUES (@idaccount, @thongbao, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_YeuCauKetBan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERT_YeuCauKetBan] (@idAccount int , @idBanBe int, @yeucau bit )
AS BEGIN 
	IF NOT EXISTS  (SELECT * From DSYeuCauKetBan WHERE idaccount = @idBanBe and idbanbe = @idAccount )
	BEGIN 
		INSERT INTO DSYeuCauKetBan (idaccount, idbanbe, yeucau)
		VALUES (@idBanBe, @idAccount, @yeucau)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdate_CapDo]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertUpdate_CapDo](@id int, @tencapdo nvarchar(100))
AS BEGIN
	IF NOT EXISTS (SELECT 1 FROM CapDo WHERE id = @id)
	BEGIN
		INSERT INTO CapDo(tencapdo) VALUES (@tencapdo)
	END
	ELSE
	BEGIN
		UPDATE CapDo
		SET tencapdo = @tencapdo
		WHERE id = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdate_LoaiDiemKN]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertUpdate_LoaiDiemKN](@id int, @diemKN int)
AS BEGIN
	IF NOT EXISTS (SELECT 1 FROM LoaiDiemKN WHERE id = @id)
	BEGIN
		INSERT INTO LoaiDiemKN(diemKN) VALUES (@diemKN)
	END
	ELSE
	BEGIN
		UPDATE LoaiDiemKN
		SET diemKN = @diemKN
		WHERE id = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[TEST]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TEST] (@A int)
AS BEGIN 
select tk.id, tk.username, tk.img
from TaiKhoan tk , ThongTinTaiKhoan tttk
where 
tk.id != @A AND 
tk.id = tttk.idtaikhoan And 
tttk.idkhoahoc = @A and 
tk.id not in (select idbanbe from DSBanBe where tk.id != idbanbe) and 
tk.id not in (select idbanbe from DSYeuCauKetBan where tk.id != idbanbe)	
END	
GO
/****** Object:  StoredProcedure [dbo].[THEM_THONGTINTAIKHOAN]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[THEM_THONGTINTAIKHOAN] (
	@idkhoahoc int, 
	@idcapdo int, 
	@diemKN int, 
	@diemKNDay int, 
	@idtaikhoan int,
	@ngayhoc varchar(100)
)
AS BEGIN
	IF NOT EXISTS  (SELECT* From ThongTinTaiKhoan WHERE idtaikhoan = @idtaikhoan)
	BEGIN 
		INSERT INTO ThongTinTaiKhoan (idkhoahoc,idcapdo,diemKN, diemKNDay, idtaikhoan, ngayhoc) 
		VALUES (@idkhoahoc,@idcapdo,@diemKN,@diemKNDay,@idtaikhoan, @ngayhoc)
	END 
	ELSE 
	BEGIN 
		UPDATE ThongTinTaiKhoan 
		SET 
		idkhoahoc = @idkhoahoc, 
		idcapdo = @idcapdo, 
		diemKN = @diemKN, 
		diemKNDay = @diemKNDay, 
		ngayhoc = @ngayhoc
		WHERE idtaikhoan = @idtaikhoan
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[ThemBaiHocPass]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemBaiHocPass] (@idTTTaiKhoan int, @idBaiHoc int)
AS BEGIN
	IF NOT EXISTS  (SELECT* From DSBaiHocPass_Of_TaiKhoan WHERE idBaiHoc = @idBaiHoc and idTTTaiKhoan = @idTTTaiKhoan)
	BEGIN
		INSERT INTO DSBaiHocPass_Of_TaiKhoan (idTTTaiKhoan, idBaiHoc)
		VALUES (@idTTTaiKhoan, @idBaiHoc)
	END 
END

GO
/****** Object:  StoredProcedure [dbo].[Update_AccountInfo]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Update_AccountInfo] (@id int, @username nvarchar(100), @email nvarchar(100), @img nvarchar(max))
AS BEGIN
	UPDATE TaiKhoan 
	SET username = @username,  email = @email, img = @img 
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[Update_DSBaiHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_DSBaiHoc](@id int, @tenbaihoc nvarchar(100), @idkhoahoc int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM KhoaHoc WHERE id = @idkhoahoc)
	BEGIN
		UPDATE DSBaiHoc
		SET tenbaihoc = @tenbaihoc, idkhoahoc = @idkhoahoc 
		WHERE id = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Update_DSCauHoi]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_DSCauHoi](@id int,  @tencauhoi nvarchar(MAX), @idbaihoc int, @idcapdo int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSBaiHoc WHERE id = @idbaihoc) AND EXISTS (SELECT 1 FROM CapDo WHERE id = @idcapdo)
	BEGIN
		UPDATE DSCauHoi 
		SET tencauhoi = @tencauhoi, idbaihoc = @idbaihoc, idcapdo = @idcapdo
		WHERE id = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Update_DSDapAn]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_DSDapAn](@id int, @idcauhoi int, @cautraloi nvarchar(MAX), @dapan bit)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSCauHoi WHERE id = @idcauhoi)
	BEGIN
		UPDATE DSDapAn
		SET idcauhoi = @idcauhoi, cautraloi = @cautraloi, dapan = @dapan
		WHERE id = @id
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_DSThongBao_Follow_Id_IdAccount]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATE_DSThongBao_Follow_Id_IdAccount](@id int, @idAccount int)
AS BEGIN 
	UPDATE DSThongBao
	SET docthongbao = 1
	WHERE idaccount = @idAccount AND id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[Update_KhoaHoc]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_KhoaHoc](@id int, @tenkhoahoc varchar(500), @imgKhoaHoc varchar(max))
AS BEGIN
	UPDATE KhoaHoc 
	SET tenkhoahoc = @tenkhoahoc, imgKhoaHoc = @imgKhoaHoc
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[Update_PassWord_Account]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_PassWord_Account](
	@username varchar(100),
	@currentPass varchar(100),
	@newPass varchar(100)
) 
AS BEGIN 
	UPDATE TaiKhoan SET [password] = @newPass
	WHERE username = @username AND [password]= @currentPass
END
GO
/****** Object:  StoredProcedure [dbo].[Update_ThongTinBanBe]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_ThongTinBanBe] (
@id int,
@idbanbe int,
@idaccount int,
@yeucau bit
)
AS BEGIN
	UPDATE DSBanBe 
	SET idbanbe = @idbanbe, idaccount = @idaccount, yeucau = @yeucau
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[Update_YeuCauKetBan]    Script Date: 2/9/2020 9:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_YeuCauKetBan](@idAcount int, @idbanbe int, @yeucau bit) 
AS BEGIN 
	UPDATE DSYeuCauKetBan Set yeucau = @yeucau
	WHERE idaccount = @idAcount and idbanbe = @idbanbe
END
GO
USE [master]
GO
ALTER DATABASE [WebLapTrinh] SET  READ_WRITE 
GO
