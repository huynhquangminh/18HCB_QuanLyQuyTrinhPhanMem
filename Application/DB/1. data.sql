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

/***3***/
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

/***12***/
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

INSERT [dbo].[DSCauHoi] ([id], [tencauhoi], [idbaihoc], [idcapdo]) VALUES (46, N'Đáp án nào tương đương với x = x + 1', 1, 1)
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
SET IDENTITY_INSERT [dbo].[DSCauHoi] OFF

/***13***/
SET IDENTITY_INSERT [dbo].[DSDapAn] ON
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (1, 46, N'x += 1', 1)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (2, 46, N'x =+ 1', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (3, 46, N'x = 1', 0)
INSERT [dbo].[DSDapAn] ([id], [idcauhoi], [cautraloi], [dapan]) VALUES (4, 46, N'Tất cả đều đúng.', 0)

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
SET IDENTITY_INSERT [dbo].[DSDapAn] OFF

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (1, N'var tenBien;', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (1, N'int tenBien;', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (1, N'string tenBien;', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (1, N'float tenBien;', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (2, N'var soThuc = 45;', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (2, N'var _soThuc = 16.5;', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (2, N'var soThuc56 = 5.6;', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (2, N'var 90soThuc = 10.45;', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (3, N'Là phép so sánh bằng x bằng 5', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (3, N'Là phép gán cho x bằng 5', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (4, N'var cars = {"Saab", "Volvo", "BMW"};', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (4, N'var cars = new array("Saab", "Volvo", "BMW");', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (4, N'var cars = ["Saab", "Volvo", "BMW"];', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (5, N'chuoiA -= chuoiB;', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (5, N'chuoiA += chuoiB;', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (5, N'chuoiA = chuoiB - chuoiB;', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (6, N'var name = cars[-1];', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (6, N'var name = cars;', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (6, N'var name = cars[3];', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (6, N'var name = cars{2};', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (7, N'Truy cập phần tử đầu tiên và thay đổi ký tự B sang ký tự J', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (7, N'Truy cập phần tử đầu tiên nhưng vì giá trị là kiểu String nên không thể thay đổi ký tự', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (7, N'Sai cú pháp', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (8, N'shift()', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (8, N'pop()', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (8, N'unshift()', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (8, N'push()', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (9, N'var doDai = cars.length', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (9, N'var doDai = cars.size()', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (9, N'var doDai = cars.length()', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (9, N'var doDai = cars.size', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (10, N'cars[-1] = "Opel";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (10, N'cars = "Opel";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (10, N'cars{0} = "Opel";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (10, N'cars[0] = "Opel";', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (11, N'i = 4";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (11, N'i = 5";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (11, N'i = 6";', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (11, N'i = 7', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (12, N'for(statment 1 , statment 2, statment 3) { ... }', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (12, N'for(statment 1 ; statment 2; statment 3) { ... }', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'stop', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'jump', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'break', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'exit', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'stop', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'jump', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'break', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (13, N'exit', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (14, N'Vòng lặp while.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (14, N'Vòng lặp do...while.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (14, N'Vòng lặp for.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (14, N'Cả 3 câu kia đều đúng.', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (15, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (15, N'Bỏ qua các câu lệnh trong cùng một câu lệnh lặp để thực hiện vòng lặp mới.', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (15, N'Truy cập đến các phần tử trong mảng nhanh.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (15, N'Chuyển tới lệnh được gán.', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (16, N'<?php ... ?>', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (16, N'<?php ... ?php>', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (16, N'<?php ... />', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (16, N'<?php .. /php>', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (17, N'var x = 5', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (17, N'int x = 5', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (17, N'String x = "hello!"', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (17, N'$x = 5', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (18, N'$xinChao', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (18, N'echo $xinChao', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (18, N'print $xinChao', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (18, N'Cả B và C đúng', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (19, N'Có', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (19, N'Không', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (20, N'str_word_count', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (20, N'strlen', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (20, N'strrev', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (20, N'strpos', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (21, N'$cars = ["Volvo"; "BMW"; "Toyota"];', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (21, N'$cars = {"Volvo", "BMW", "Toyota"};', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (21, N'$cars = ["Volvo", "BMW", "Toyota"];', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (21, N'$cars = array("Volvo", "BMW", "Toyota");', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (22, N'size()', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (22, N'length()', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (22, N'count()', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (22, N'sizeArray()', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (23, N'sắp xếp tăng dần', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (23, N'sắp xếp giảm dần', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (23, N'sắp xếp giảm dần theo giá trị', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (23, N'sắp xếp tăng dần theo key', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (24, N'sắp xếp tăng dần', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (24, N'sắp xếp giảm dần', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (24, N'sắp xếp giảm dần theo giá trị', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (24, N'sắp xếp tăng dần theo key', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (25, N'$cars[0] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (25, N'$cars[1] = "BMW";', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (25, N'$cars[2] = "BMW";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (25, N'$cars[3] = "BMW";', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (26, N'x = 4', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (26, N'x = 3', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (26, N'x = 5', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (26, N'x = 6', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (27, N'Không in ra được y', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (27, N'y = 4', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (27, N'y = 6";', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (27, N'y = 10";', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (28, N'Bỏ qua câu lệnh trong cùng vòng lặp.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (28, N'Kết thúc hoàn toàn xử lý.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (28, N'Chuyển tới lệnh được gán.', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (28, N'Kết thúc vòng lặp và chuyển sang vòng lặp ngay sau nó.', 1)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (29, N'Các vòng lặp gồm while, do...while, for, foreach', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (29, N'Các vòng lặp gồm while, do...while, for', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (29, N'Các vòng lặp gồm while, for', 0)

INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (30, N'Thực hiện lệnh trước rồi kiểm tra điều kiện. Nếu sai, thực hiện tiếp công việc.<br>Nếu đúng,thoát khỏi vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (30, N'Kiểm tra điều kiện trước khi lặp. Nếu đúng thực hiện công việc. Nếu sai, không<br>thực hiện công việc hoặc thoát khỏi vòng lặp', 0)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (30, N'Thực hiện lệnh trước rồi kiểm tra điều kiện. Nếu đúng, thực hiện tiếp công việc.<br>Nếu sai,thoát khỏi vòng lặp', 1)
INSERT [dbo].[DSDapAn] ([idcauhoi], [cautraloi], [dapan]) VALUES (30, N'Kiểm tra điều kiện trước khi lặp. Nếu sai thực hiện công việc. Nếu đúng, không<br>thực hiện công việc hoặc thoát khỏi vòng lặp', 0)