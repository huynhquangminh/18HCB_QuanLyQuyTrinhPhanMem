USE [master]
GO
/****** Object:  Database [WebLapTrinh]    Script Date: 12/16/2019 10:46:46 PM ******/
CREATE DATABASE [WebLapTrinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebLapTrinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebLapTrinh.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  Table [dbo].[BieuDoTheoDoi]    Script Date: 12/16/2019 10:46:46 PM ******/
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
	[NgayBatDau] [date] NOT NULL,
 CONSTRAINT [PK_BieuDoTheoDoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CapDo]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSBaiHoc]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSBaiHocPass_Of_TaiKhoan]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSBanBe]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSCauHoi]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSDapAn]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSKhoaHocPass_Of_TaiKhoan]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSThongBao]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[DSYeuCauKetBan]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[LoaiDiemKN]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  Table [dbo].[ThongTinTaiKhoan]    Script Date: 12/16/2019 10:46:46 PM ******/
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
SET IDENTITY_INSERT [dbo].[CapDo] ON 

INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (1, N'Dễ')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (2, N'Trung Bình')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (3, N'Khó')
SET IDENTITY_INSERT [dbo].[CapDo] OFF
SET IDENTITY_INSERT [dbo].[DSBaiHoc] ON 

INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (1, N'Syntax', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (2, N'Arrays', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (3, N'Loop', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (4, N'Class Members', 3)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (5, N'Syntax', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (6, N'Arrays', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (7, N'Loop', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (8, N'Class Members', 6)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (9, N'Syntax', 7)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (10, N'Arrays', 7)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (11, N'Loop', 7)
INSERT [dbo].[DSBaiHoc] ([id], [tenbaihoc], [idkhoahoc]) VALUES (12, N'Class Members', 7)
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
SET IDENTITY_INSERT [dbo].[DSBaiHoc] OFF
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ON 

INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (1, 1, 2)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (2, 1, 3)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (3, 2, 1)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (4, 2, 7)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (5, 2, 8)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (6, 2, 9)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (7, 3, 12)
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[DSBanBe] ON 

INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 2, N'user2', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (2, 4, N'user4', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (3, 1, N'user1', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (4, 3, N'user3', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (5, 4, N'user4', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (6, 2, N'user2', 3, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (7, 4, N'user4', 3, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (8, 1, N'user1', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (9, 2, N'user2', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (10, 3, N'user3', 3, 1)
SET IDENTITY_INSERT [dbo].[DSBanBe] OFF
SET IDENTITY_INSERT [dbo].[DSCauHoi] ON 

INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (1, N'Đâu là khai báo biến đúng trong javascript', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (2, N'Tên biến nào sai', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (3, N'Ký hiệu "=" trong <code>var x = 5 </code>khai báo là gì?', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (4, N'Đâu là khai báo mảng đúng', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (5, N'Đâu là phép nối chuỗi đúng<br><code>var chuoiA = "Web học lập trình "; <br>chuoiB = "thật bổ ích"</code>', 5, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (6, N'Mảng cars có 3 phần tử, đâu là cách truy cập phần tử đúng', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (7, N'<code>var myStr = "Bob";<br>myStr[0] = "J";</code><br>. Đoạn code trên làm gì?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (8, N'<code>var fruits = [ "Banana", "Orange", "Apple", "Mango" ];<br>fruits.<strong>______</strong> ;</code><br>Sử dụng phương thức nào để loại bỏ phần tử đầu tiên', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (9, N'Độ dài của mảng?', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (10, N'Thay đổi phần tử đầu tiên của mảng', 6, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (11, N'Khai báo vòng lặp for', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (12, N'Kết quả của biến i sau kết thúc vòng lặp<br><code>var i<br> for (i = 0; i <= 5; i++) {<br>&emsp;&emsp;text += "The number is " + i + "<br>";<br> } </code>', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (13, N'Câu lệnh nào dùng để dừng vòng lặp', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (14, N'Có các loại vòng lặp nào trong Javascript', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (15, N'Ý nghĩa lệnh continue trong vòng lặp trong Javascript', 7, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (16, N'Để viết script PHP cần khai báo?', 9, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (17, N'Đâu là khai báo biến đúng trong PHP', 9, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (18, N'<code>$xinChao = "Học lập trình thật vui";<br><strong>____</strong> $xinChao;</code>. Điền từ khóa in biến xinChao', 9, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (19, N'PHP có phân biệt in hoa với in thường', 9, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (20, N'<code>echo _____("Hello world!");</code><br>Để đếm số ký tự dùng hàm nào', 9, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (21, N'Đâu là cách khai báo array đúng', 10, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (22, N'<code>echo _____($cars);</code><br>Để lấy độ dài mảng dùng hàm gì', 10, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (23, N'Ý nghĩa hàm rsort()', 10, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (24, N'Ý nghĩa hàm arsort()', 10, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (25, N'Mảng có 2 phần tử. Truy cập vào thứ 2 và thay đổi thành "BMW"', 10, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (26, N'<code>$x = 1;<br>while($x <= 5) {<br>&emsp;&emsp;$x++;<br>}<br>echo $x;</code>Giá trị của x sau vòng lặp', 11, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (27, N'<code>for ($x = 0; $x <= 4; $x++) {<br>&emsp;&emsp;$y = $y + $x; <br>}echo $y</code><br>Giá trị của y', 11, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (28, N'Ý nghĩa lệnh break trong vòng lặp trong PHP', 11, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (29, N'Các loại vòng lặp trong PHP?', 11, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (30, N'Cách thức hoạt động của vòng lặp do-while', 11, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (46, N'Miền giá trị của char trong C?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (47, N'Hàm duy nhất mà tất cả các chương trình C phải có là gì?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (48, N'Hằng (Constant) là gì?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (49, N'Hằng số nguyên 2 byte (int) hệ bát phân là:', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (50, N'Biến là gì?', 1, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (51, N'Ý nghĩa của dayso[4] = 50;', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (52, N'Ý nghĩa của a[3][4]', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (53, N'So sánh kết quả 2 cách khai báo int a[2][2] = {{0, 1,}, {2, 3}}; và int a[2][2] = {0, 1, 2, 3};', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (54, N'Đâu không phải là ưu điểm của mảng một chiều.', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (55, N'Cho int array[2][2][3] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}; Kết quả array[1][0][2] ?', 2, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (56, N'Ý nghĩa lệnh break trong vòng lặp trong C++', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (57, N'Ý nghĩa lệnh continue trong vòng lặp trong C++', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (58, N'Có các loại vòng lặp nào trong C++?', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (59, N'Ý nghĩa for( ; ; )', 3, 1)
INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (60, N'void main()
{
    char s[] = "man"; 
    int i; 
    for(i = 0; s[i]; i++) 
        printf("%c%c%c%c\t", s[i], *(s+i), *(i+s), i[s]); 
    getch();
}', 3, 1)
SET IDENTITY_INSERT [dbo].[DSCauHoi] OFF
SET IDENTITY_INSERT [dbo].[DSDapAn] ON 

INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (1, 46, N'Từ -128 đến 127', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (2, 46, N'Từ -127 đến 127', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (3, 46, N'Từ 0 đến 127', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (4, 46, N'Từ -127 đến 128', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (5, 47, N'start()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (6, 47, N'system()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (7, 47, N'main()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (8, 47, N'program()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (9, 48, N'Là đại lượng tạm của chương trình.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (10, 48, N'Không là một chuỗi ký tự, một ký tự, một con số xác định.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (11, 48, N'Là giá trị khởi tạo mặc định của chương trình.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (12, 48, N'Là đại lượng không đổi trong suốt quá trình thực thi của chương trình.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (13, 49, N'Là dãy số thuộc từ 0 đến 7.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (14, 49, N'Là kiểu số nguyên (có âm) từ 0 đến 7 để biểu diễn một số nguyên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (15, 49, N'Là kiểu số nguyên từ 1 đến 8 để biểu diễn một số nguyên.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (16, 49, N'Là kiểu số nguyên từ 0 đến 7 để biểu diễn một số nguyên.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (17, 50, N'Là một đại lượng được người lập trình định nghĩa và được đặt tên thông qua việc khai báo biến.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (18, 50, N'Thuộc về một kiểu dữ liệu xác định và có giá trị thuộc kiểu đó.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (19, 50, N'Là một đại lượng được người lập trình định nghĩa và có giá trị không đổi.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (20, 50, N'Là tham số được chương trình định nghĩa để chứa giá trị trong quá trình chạy.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (21, 51, N'dayso có 4 phần tử và tổng dayso = 50.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (22, 51, N'dayso có 4 phần tử và giá trị thứ 4 là 50.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (23, 51, N'dayso có giá trị thứ 5 trong mảng là 50.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (24, 51, N'dayso có 5 phần tử 0, 1, 2, 3, 4.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (25, 52, N'a là mảng 2 chiều có 3 dòng, 4 cột.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (26, 52, N'a là mảng 2 chiều có 4 dòng, 3 cột.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (27, 52, N'lấy ra giá trị tại vị trí a[3][4] trong mảng 2 chiều.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (28, 52, N'a có 12 phần tử hoặc hơn.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (29, 53, N'Giống nhau.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (30, 53, N'Khác nhau.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (31, 54, N'Dễ hiểu và dễ sử dụng: chỉ cần khai báo <kiểu dữ liệu> tên mảng[kích thước].', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (32, 54, N'Kích thước của mảng phải là không phải cố định.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (33, 54, N'Truy cập đến các phần tử trong mảng nhanh.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (34, 54, N'Dễ dàng duyệt qua từng phần tử mảng, thao tác, sắp xếp dữ liệu.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (35, 55, N'6.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (36, 55, N'7.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (37, 55, N'8.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (38, 55, N'9.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (39, 56, N'Bỏ qua câu lệnh trong cùng vòng lặp.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (40, 56, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (41, 56, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (42, 56, N'Kết thúc vòng lặp hoặc lệnh switch và chuyển sang vòng lặp hoặc lệnh switch ngay sau nó.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (43, 57, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (44, 57, N'Bỏ qua các câu lệnh trong cùng một câu lệnh lặp để thực hiện vòng lặp mới.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (45, 57, N'Truy cập đến các phần tử trong mảng nhanh.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (46, 57, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (47, 58, N'Vòng lặp while.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (48, 58, N'Cả 3 câu kia đều đúng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (49, 58, N'Vòng lặp do...while.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (50, 58, N'Vòng lặp for.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (51, 59, N'Vòng lặp vô hạn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (52, 59, N'Vòng lặp không điều kiện.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (53, 59, N'Lỗi syntax.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (54, 59, N'A, B đều đúng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (55, 60, N'mmmm aaaa nnnn.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (56, 60, N'mmm aaa nnn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (57, 60, N'mmmm aaa nnn.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (58, 60, N'Kết quả khác.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (59, 1, N'var tenBien;', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (60, 1, N'int tenBien;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (61, 1, N'string tenBien;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (62, 1, N'float tenBien;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (63, 2, N'var soThuc = 45;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (64, 2, N'var _soThuc = 16.5;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (65, 2, N'var soThuc56 = 5.6;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (66, 2, N'var 90soThuc = 10.45;', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (67, 3, N'Là phép so sánh bằng x bằng 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (68, 3, N'Là phép gán cho x bằng 5', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (69, 4, N'var cars = {"Saab", "Volvo", "BMW"};', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (70, 4, N'var cars = new array("Saab", "Volvo", "BMW");', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (71, 4, N'var cars = ["Saab", "Volvo", "BMW"];', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (72, 5, N'chuoiA -= chuoiB;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (73, 5, N'chuoiA += chuoiB;', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (74, 5, N'chuoiA = chuoiB - chuoiB;', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (75, 6, N'var name = cars[-1];', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (76, 6, N'var name = cars;', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (77, 6, N'var name = cars[3];', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (78, 6, N'var name = cars{2};', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (79, 7, N'Truy cập phần tử đầu tiên và thay đổi ký tự B sang ký tự J', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (80, 7, N'Truy cập phần tử đầu tiên nhưng vì giá trị là kiểu String nên không thể thay đổi ký tự', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (81, 7, N'Sai cú pháp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (82, 8, N'shift()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (83, 8, N'pop()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (84, 8, N'unshift()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (85, 8, N'push()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (86, 9, N'var doDai = cars.length', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (87, 9, N'var doDai = cars.size()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (88, 9, N'var doDai = cars.length()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (89, 9, N'var doDai = cars.size', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (90, 10, N'cars[-1] = "Opel";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (91, 10, N'cars = "Opel";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (92, 10, N'cars{0} = "Opel";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (93, 10, N'cars[0] = "Opel";', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (94, 11, N'i = 4";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (95, 11, N'i = 5";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (96, 11, N'i = 6";', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (97, 11, N'i = 7', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (98, 12, N'for(statment 1 , statment 2, statment 3) { ... }', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (99, 12, N'for(statment 1 ; statment 2; statment 3) { ... }', 1)
GO
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (100, 13, N'stop', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (101, 13, N'jump', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (102, 13, N'break', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (103, 13, N'exit', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (104, 13, N'stop', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (105, 13, N'jump', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (106, 13, N'break', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (107, 13, N'exit', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (108, 14, N'Vòng lặp while.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (109, 14, N'Vòng lặp do...while.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (110, 14, N'Vòng lặp for.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (111, 14, N'Cả 3 câu kia đều đúng.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (112, 15, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (113, 15, N'Bỏ qua các câu lệnh trong cùng một câu lệnh lặp để thực hiện vòng lặp mới.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (114, 15, N'Truy cập đến các phần tử trong mảng nhanh.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (115, 15, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (116, 16, N'<?php ... ?>', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (117, 16, N'<?php ... ?php>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (118, 16, N'<?php ... />', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (119, 16, N'<?php .. /php>', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (120, 17, N'var x = 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (121, 17, N'int x = 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (122, 17, N'String x = "hello!"', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (123, 17, N'$x = 5', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (124, 18, N'$xinChao', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (125, 18, N'echo $xinChao', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (126, 18, N'print $xinChao', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (127, 18, N'Cả B và C đúng', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (128, 19, N'Có', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (129, 19, N'Không', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (130, 20, N'str_word_count', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (131, 20, N'strlen', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (132, 20, N'strrev', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (133, 20, N'strpos', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (134, 21, N'$cars = ["Volvo"; "BMW"; "Toyota"];', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (135, 21, N'$cars = {"Volvo", "BMW", "Toyota"};', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (136, 21, N'$cars = ["Volvo", "BMW", "Toyota"];', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (137, 21, N'$cars = array("Volvo", "BMW", "Toyota");', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (138, 22, N'size()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (139, 22, N'length()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (140, 22, N'count()', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (141, 22, N'sizeArray()', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (142, 23, N'sắp xếp tăng dần', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (143, 23, N'sắp xếp giảm dần', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (144, 23, N'sắp xếp giảm dần theo giá trị', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (145, 23, N'sắp xếp tăng dần theo key', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (146, 24, N'sắp xếp tăng dần', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (147, 24, N'sắp xếp giảm dần', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (148, 24, N'sắp xếp giảm dần theo giá trị', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (149, 24, N'sắp xếp tăng dần theo key', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (150, 25, N'$cars[0] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (151, 25, N'$cars[1] = "BMW";', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (152, 25, N'$cars[2] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (153, 25, N'$cars[3] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (154, 26, N'x = 4', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (155, 26, N'x = 3', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (156, 26, N'x = 5', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (157, 26, N'x = 6', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (158, 27, N'Không in ra được y', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (159, 27, N'y = 4', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (160, 27, N'y = 6";', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (161, 27, N'y = 10";', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (162, 28, N'Bỏ qua câu lệnh trong cùng vòng lặp.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (163, 28, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (164, 28, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (165, 28, N'Kết thúc vòng lặp và chuyển sang vòng lặp ngay sau nó.', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (166, 29, N'Các vòng lặp gồm while, do...while, for, foreach', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (167, 29, N'Các vòng lặp gồm while, do...while, for', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (168, 29, N'Các vòng lặp gồm while, for', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (169, 30, N'Thực hiện lệnh trước rồi kiểm tra điều kiện. Nếu sai, thực hiện tiếp công việc.<br>Nếu đúng,thoát khỏi vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (170, 30, N'Kiểm tra điều kiện trước khi lặp. Nếu đúng thực hiện công việc. Nếu sai, không<br>thực hiện công việc hoặc thoát khỏi vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (171, 30, N'Thực hiện lệnh trước rồi kiểm tra điều kiện. Nếu đúng, thực hiện tiếp công việc.<br>Nếu sai,thoát khỏi vòng lặp', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (172, 30, N'Kiểm tra điều kiện trước khi lặp. Nếu sai thực hiện công việc. Nếu đúng, không<br>thực hiện công việc hoặc thoát khỏi vòng lặp', 0)
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
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] ON 

INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (1, 1, 5, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (2, 1, 6, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (3, 2, 5, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (4, 3, 6, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (5, 3, 7, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (6, 4, 5, 1)
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] OFF
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON 

INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (1, N'SQL ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAFbXHKyZLohCjD4gs0NSPoa0C23o5uOmwLNHMD6i7V6m1Vded&s')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (2, N'C#', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEQm0locnJ2Lvz-cmdHlDxpgYEYZNV4-VermFgZmYVGRhM_Lfr&s')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (3, N'C/C++ ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsounbNTcpyrBmXd_L310tWQAAB0_yEpX9YQ_459uQj8CXeixl&s')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (4, N'Angular ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnmJqfQENKuNadc6EkQHjb_beAzFGwii3WMCr_7p70nELSf0Oj&s')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (5, N'Html/Css', N'https://vnypc.files.wordpress.com/2016/11/html_css.jpg')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (6, N'JavaScript', N'https://cdn.pixabay.com/photo/2015/04/23/17/41/javascript-736401_960_720.png')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (7, N'PHP', N'https://freetuts.net/upload/tut_cate/images/2015/12/13/1/hoc-php-lap-trinh-php.gif')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (8, N'ReactJs', N'https://techtalk.vn/wp-content/uploads/2016/06/techtalk-reactjs-696x392.png')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (9, N'VueJs', N'https://techtalk.vn/wp-content/uploads/2017/06/vuejs-logo-696x425.jpg')
INSERT [dbo].[KhoaHoc] ([id], [tenkhoahoc], [imgKhoaHoc]) VALUES (10, N'TypeScript', N'https://miro.medium.com/max/816/1*mn6bOs7s6Qbao15PMNRyOA.png')
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] ON 

INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (1, 30)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (2, 65)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (3, 95)
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (1, N'user1', N'1234', N'user1@gmail', N'xxxx')
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (2, N'user2', N'1234', N'user2@gmail', N'xxx')
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (3, N'user3', N'1234', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (4, N'user4', N'1234', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (5, N'user5', N'1234', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] ON 

INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (1, 2, 1, 2, 40, 4)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (2, 1, 1, 2, 54, 2)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (3, 6, 1, 3, 52, 5)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (4, 9, 1, 1, 30, 3)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (6, 3, 1, 3, 0, 1)
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] OFF
ALTER TABLE [dbo].[BieuDoTheoDoi]  WITH CHECK ADD  CONSTRAINT [FK_BieuDoTheoDoi_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[BieuDoTheoDoi] CHECK CONSTRAINT [FK_BieuDoTheoDoi_TaiKhoan]
GO
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
/****** Object:  StoredProcedure [dbo].[ACCOUNT_LOGIN]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_CapDo]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_DSBaiHoc_ById]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GET_DSDapAn_Follow_IdBaiHoc_IdCapDo]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_DSKhoaHoc]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GET_DSKhoaHocPass_By_IdTTTaiKhoan]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GET_DSThongBao]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_LoaiDiemKinhNghiem]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GET_THONGTINTAIKHOAN]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[INSERT_ACCOUNT]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[THEM_THONGTINTAIKHOAN]    Script Date: 12/16/2019 10:46:46 PM ******/
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
	IF NOT EXISTS  (SELECT* From ThongTinTaiKhoan WHERE idtaikhoan = @idtaikhoan)
	BEGIN 
		INSERT INTO ThongTinTaiKhoan (idkhoahoc,idcapdo,diemKN, diemKNDay, idtaikhoan) 
		VALUES (@idkhoahoc,@idcapdo,@diemKN,@diemKNDay,@idtaikhoan)
	END 
	ELSE 
	BEGIN 
		UPDATE ThongTinTaiKhoan 
		SET idkhoahoc = @idkhoahoc, idcapdo = @idcapdo, diemKN = @diemKN, diemKNDay = @diemKNDay
		WHERE idtaikhoan = @idtaikhoan
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_DSThongBao_Follow_Id_IdAccount]    Script Date: 12/16/2019 10:46:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Update_PassWord_Account]    Script Date: 12/16/2019 10:46:46 PM ******/
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
USE [master]
GO
ALTER DATABASE [WebLapTrinh] SET  READ_WRITE 
GO
