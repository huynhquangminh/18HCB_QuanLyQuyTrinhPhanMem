USE [WebLapTrinh]
GO
/***1***/
SET IDENTITY_INSERT [dbo].[CapDo] ON
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (1, N'Dễ')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (2, N'Trung Bình')
INSERT [dbo].[CapDo] ([id], [tencapdo]) VALUES (3, N'Khó')
SET IDENTITY_INSERT [dbo].[CapDo] OFF

/***2***/
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

/***3***/
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

/***4***/
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] ON 
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (1, 30)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (2, 65)
INSERT [dbo].[LoaiDiemKN] ([id], [diemKN]) VALUES (3, 95)
SET IDENTITY_INSERT [dbo].[LoaiDiemKN] OFF

/***5***/
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (1, N'user1', N'1234', N'user1@gmail', N'xxxx')
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (2, N'user2', N'1234', N'user2@gmail', N'xxx')
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (3, N'user3', N'1234', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([id], [username], [password], [email], [img]) VALUES (4, N'user4', N'1234', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF

/***6***/
SET IDENTITY_INSERT [dbo].[DSBanBe] ON
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (1, 2, 'user2', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (2, 4, 'user4', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (3, 1, 'user1', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (4, 3, 'user3', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (5, 4, 'user4', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (6, 2, 'user2', 3, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (7, 4, 'user4', 3, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (8, 1, 'user1', 1, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (9, 2, 'user2', 2, 1)
INSERT [dbo].[DSBanBe] ([id], [idbanbe], [tenbanbe], [idaccount], [yeucau]) VALUES (10, 3, 'user3', 3, 1)
SET IDENTITY_INSERT [dbo].[DSBanBe] OFF

/***7***/
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

/***8***/
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] ON
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (1, 1, 5, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (2, 1, 6, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (3, 2, 5, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (4, 3, 6, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (5, 3, 7, 1)
INSERT [dbo].[DSYeuCauKetBan] ([id], [idaccount], [idbanbe], [yeucau]) VALUES (6, 4, 5, 1)
SET IDENTITY_INSERT [dbo].[DSYeuCauKetBan] OFF

/***9***/
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] ON
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (1, 2, 1, 2, 40, 1)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (2, 1, 1, 2, 54, 2)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (3, 6, 3, 3, 52, 2)
INSERT [dbo].[ThongTinTaiKhoan] ([id], [idkhoahoc], [idcapdo], [diemKN], [diemKNDay], [idtaikhoan]) VALUES (4, 9, 2, 1, 30, 3)
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] OFF

/***10***/
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ON
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (1, 1, 2)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (2, 1, 3)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (3, 2, 1)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (4, 2, 7)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (5, 2, 8)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (6, 2, 9)
INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idBaiHoc]) VALUES (7, 3, 12)
SET IDENTITY_INSERT [dbo].[DSBaiHocPass_Of_TaiKhoan] OFF

/***11***/
SET IDENTITY_INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ON
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (1, 1, 3)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (2, 1, 5)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (3, 1, 9)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (4, 2, 3)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (5, 2, 5)
INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] ([id], [idTTTaiKhoan], [idKhoaHoc]) VALUES (6, 4, 1)
SET IDENTITY_INSERT [dbo].[DSKhoaHocPass_Of_TaiKhoan] OFF