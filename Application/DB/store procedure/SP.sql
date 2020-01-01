ALTER PROC [dbo].[ACCOUNT_LOGIN] (
	@user varchar(100),
	@pass varchar(100)
)
AS BEGIN 
	SELECT TOP 1 id, username, [password], img, email
	FROM TaiKhoan 
	WHERE username = @user AND [password] = @pass 
END 

ALTER PROC [dbo].[Get_CapDo] 
AS BEGIN 
	SELECT id, tencapdo
	FROM CapDo
END

ALTER PROC [dbo].[Get_DSBaiHoc_ById] (
	@idKhoaHoc int
) 
AS BEGIN 
	SELECT id, tenbaihoc, idkhoahoc
	FROM DSBaiHoc
	WHERE idkhoahoc = @idKhoaHoc
END

ALTER PROC [dbo].[GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo](@idBaiHoc int, @idCapDo int)
AS BEGIN 
	SELECT cauhoi.id, cauhoi.tencauhoi, idbaihoc
	FROM DSCauHoi cauhoi
	WHERE cauhoi.idcapdo = @idCapDo AND cauhoi.idbaihoc = @idBaiHoc
END

ALTER PROC [dbo].[Get_DSKhoaHoc]
AS BEGIN 
	SELECT id, tenkhoahoc, imgKhoaHoc
	FROM KhoaHoc
END

ALTER PROC [dbo].[Get_LoaiDiemKinhNghiem] 
AS BEGIN 
	SELECT id, diemKN
	FROM LoaiDiemKN
END

ALTER PROC [dbo].[GET_THONGTINTAIKHOAN] (@idTaikhoan int)
AS
BEGIN
	SELECT TOP 1 id, idkhoahoc, idcapdo, diemKN, diemKNDay, idtaikhoan, ngayhoc
	FROM ThongTinTaiKhoan 
	WHERE idtaikhoan = @idTaikhoan 
END

ALTER PROC [dbo].[INSERT_ACCOUNT] (@user varchar(100), @pass varchar(100))
AS BEGIN 
	IF NOT EXISTS  (SELECT* From TaiKhoan WHERE username = @user)
	BEGIN 
		INSERT INTO TaiKhoan (username, [password], email, img)
		Values (@user, @pass, null, null)
	END
END

ALTER PROC [dbo].[THEM_THONGTINTAIKHOAN] (
	@idkhoahoc int, 
	@idcapdo int, 
	@diemKN int, 
	@diemKNDay int, 
	@idtaikhoan int,
	@ngayhoc date
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

ALTER PROC [dbo].[Update_PassWord_Account](
	@username varchar(100),
	@currentPass varchar(100),
	@newPass varchar(100)
) 
AS BEGIN 
	UPDATE TaiKhoan SET [password] = @newPass
	WHERE username = @username AND [password]= @currentPass
END

CREATE PROC [dbo].[GET_DSThongBao](@idaccount int)
AS BEGIN 
	SELECT id, idaccount, thongbao, docthongbao
	FROM DSThongBao
	WHERE idaccount = @idaccount AND docthongbao = 0
END
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

CREATE PROC [dbo].[UPDATE_DSThongBao_Follow_Id_IdAccount](@id int, @idAccount int)
AS BEGIN 
	UPDATE DSThongBao
	SET docthongbao = 1
	WHERE idaccount = @idAccount AND id = @id
END


CREATE PROC [dbo].[GET_DSKhoaHocPass_By_IdTTTaiKhoan](@idTTTaiKhoan int)
AS BEGIN 
	SELECT id, idTTTaiKhoan, idKhoaHoc
	FROM DSKhoaHocPass_Of_TaiKhoan
	WHERE idTTTaiKhoan = @idTTTaiKhoan
END

CREATE PROC ThemBaiHocPass (@idTTTaiKhoan int, @idBaiHoc int)
AS BEGIN
	IF NOT EXISTS  (SELECT* From DSBaiHocPass_Of_TaiKhoan WHERE idBaiHoc = @idBaiHoc and idTTTaiKhoan = @idTTTaiKhoan)
	BEGIN
		INSERT INTO DSBaiHocPass_Of_TaiKhoan (idTTTaiKhoan, idBaiHoc)
		VALUES (@idTTTaiKhoan, @idBaiHoc)
	END 
END

CREATE PROC Get_all_account_same_khoahoc(
	@idTaiKhoan int,
	@idKhoaHoc int
)
AS BEGIN 
	SELECT tk.id, tk.username, tk.img
	FROM TaiKhoan tk, ThongTinTaiKhoan tttk
	WHERE tk.id != @idTaiKhoan AND tk.id = tttk.idtaikhoan And tttk.idkhoahoc = @idKhoaHoc 
END

CREATE PROC [dbo].[GET_BieuDoTheoDoi](@idTaikhoan int)
AS BEGIN 
	SELECT id, idTaikhoan, Thu2, Thu3, Thu4, Thu5, Thu6, Thu7, ChuNhat, NgayBatDau
	FROM BieuDoTheoDoi
	WHERE idTaikhoan = @idTaikhoan
END

CREATE PROC [dbo].[INSERT_OR_UPDATE_BieuDoTheoDoi](
	@idTaikhoan int,
	@Thu2 int,
	@Thu3 int, 
	@Thu4 int, 
	@Thu5 int, 
	@Thu6 int, 
	@Thu7 int, 
	@ChuNhat int, 
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
	IF NOT EXISTS  (SELECT 1 From BieuDoTheoDoi WHERE idTaikhoan = @idTaikhoan)
	BEGIN
		DECLARE @NgayDauTuan date = @NgayHienTai;
		
		IF (@CurDayOfWeek <> @MONDAY)
			SET @NgayDauTuan = DATEADD(day, -(@CurDayOfWeek-1), @NgayHienTai);

		INSERT INTO BieuDoTheoDoi (idTaikhoan, Thu2, Thu3, Thu4, Thu5, Thu6, Thu7, ChuNhat, NgayBatDau) 
							VALUES (@idTaikhoan,@Thu2,@Thu3,@Thu4,@Thu5,@Thu6, @Thu7, @ChuNhat, @NgayDauTuan)
	END

	--UPDATE
	ELSE
	BEGIN
		DECLARE @NgayDauTuanDB date;
		SET @NgayDauTuanDB = (SELECT NgayBatDau FROM BieuDoTheoDoi);

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
				Thu7 = @Thu7, ChuNhat = @ChuNhat, NgayBatDau = @NgayDauTuanDB
			WHERE idTaikhoan = @idTaikhoan
		END
		ELSE
		BEGIN
			UPDATE BieuDoTheoDoi 
			SET Thu2 = @Thu2, Thu3 = @Thu3, Thu4 = @Thu4, Thu5 = @Thu5, 
				Thu6 = @Thu6, Thu7 = @Thu7, ChuNhat = @ChuNhat
			WHERE idTaikhoan = @idTaikhoan
		END
	END
END

----------- 28/12/2019------------
CREATE PROC [dbo].[Get_DiemPerThang](@idTaikhoan int, @idKhoaHoc int, @NgayHienTai date)
AS BEGIN
	DECLARE @dauThang Date,
			@cuoiThang Date
			
	SET @dauThang = DATEADD(DAY,1,EOMONTH(@NgayHienTai,-1))
	SET @cuoiThang = EOMONTH(@NgayHienTai)

	SELECT SUM(diemKNDay) AS 'diem/thang' 
	FROM ThongTinTaiKhoan
	WHERE ngayhoc BETWEEN @dauThang AND @cuoiThang
 	AND idtaikhoan = @idTaikhoan AND idkhoahoc = @idKhoaHoc
END

CREATE PROC [dbo].[Insert_KhoaHoc](@tenkhoahoc nvarchar, @imgKhoaHoc varchar)
AS BEGIN
	IF NOT EXISTS (SELECT 1 FROM KhoaHoc WHERE tenkhoahoc = @tenkhoahoc)
	BEGIN
		INSERT INTO KhoaHoc(tenkhoahoc, imgKhoaHoc)
		VALUES (@tenkhoahoc, @imgKhoaHoc)

		SELECT SCOPE_IDENTITY() AS ID
	END
END

CREATE PROC [dbo].[Update_KhoaHoc](@id int, @tenkhoahoc nvarchar, @imgKhoaHoc varchar)
AS BEGIN
	UPDATE KhoaHoc 
	SET tenkhoahoc = @tenkhoahoc, imgKhoaHoc = @imgKhoaHoc
	WHERE id = @id
END

CREATE PROC [dbo].[Insert_DSBaiHoc](@tenbaihoc nvarchar(100), @idkhoahoc int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM KhoaHoc WHERE id = @idkhoahoc)
	BEGIN
		INSERT INTO DSBaiHoc(tenbaihoc, idkhoahoc) 
		VALUES (@tenbaihoc, @idkhoahoc)
	END
END

CREATE PROC [dbo].[Update_DSBaiHoc](@id int, @tenbaihoc nvarchar(100), @idkhoahoc int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM KhoaHoc WHERE id = @idkhoahoc)
	BEGIN
		UPDATE DSBaiHoc
		SET tenbaihoc = @tenbaihoc, idkhoahoc = @idkhoahoc 
		WHERE id = @id
	END
END

CREATE PROC [dbo].[Insert_DSCauHoi](@tencauhoi nvarchar(MAX), @idbaihoc int, @idcapdo int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSBaiHoc WHERE id = @idbaihoc) AND EXISTS (SELECT 1 FROM CapDo WHERE id = @idcapdo)
	BEGIN
		INSERT INTO DSCauHoi(tencauhoi, idbaihoc, idcapdo)
		VALUES (@tencauhoi, @idbaihoc, @idcapdo)

		SELECT SCOPE_IDENTITY() AS ID
	END
END

CREATE PROC [dbo].[Update_DSCauHoi](@id int,  @tencauhoi nvarchar(MAX), @idbaihoc int, @idcapdo int)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSBaiHoc WHERE id = @idbaihoc) AND EXISTS (SELECT 1 FROM CapDo WHERE id = @idcapdo)
	BEGIN
		UPDATE DSCauHoi 
		SET tencauhoi = @tencauhoi, idbaihoc = @idbaihoc, idcapdo = @idcapdo
		WHERE id = @id
	END
END

CREATE PROC [dbo].[Insert_DSDapAn](@idcauhoi int, @cautraloi nvarchar(MAX), @dapan bit)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSCauHoi WHERE id = @idcauhoi)
	BEGIN
		INSERT INTO DSDapAn(idcauhoi, cautraloi, dapan)
		VALUES (@idcauhoi, @cautraloi, @dapan)
	END
END

CREATE PROC [dbo].[Update_DSDapAn](@id int, @idcauhoi int, @cautraloi nvarchar(MAX), @dapan bit)
AS BEGIN
	IF EXISTS (SELECT 1 FROM DSCauHoi WHERE id = @idcauhoi)
	BEGIN
		UPDATE DSDapAn
		SET idcauhoi = @idcauhoi, cautraloi = @cautraloi, dapan = @dapan
		WHERE id = @id
	END
	
END

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

CREATE PROC Get_DSBaiHocPass(@idTTTaiKhoan int)
AS BEGIN
	SELECT id, idTTTaiKhoan, idBaiHoc
	FROM DSBaiHocPass_Of_TaiKhoan
	WHERE idTTTaiKhoan = @idTTTaiKhoan 
END

ALTER PROC Get_DSBanBe_By_IdAccount(@idAccount int)
AS BEGIN
	SELECT be.id, be.idbanbe, be.idaccount, be.yeucau, tk.username, tk.img
	FROM DSBanBe be, TaiKhoan tk
	WHERE be.idaccount = @idAccount AND be.idbanbe = tk.id
END

ALTER PROC Update_ThongTinBanBe (
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

CREATE PROC Delete_BanBe ( @idbanbe int, @idaccount int)
AS BEGIN
	DELETE DSBanBe WHERE idbanbe = @idbanbe AND idaccount = @idaccount 
END

ALTER PROC Delete_YeuCauKetBan ( @idbanbe int, @idaccount int)
AS BEGIN
	DELETE DSYeuCauKetBan WHERE idbanbe = @idbanbe AND idaccount = @idaccount AND yeucau = 0
END

ALTER PROC Get_DsYeuCauKetBan(@idAccount int)
AS BEGIN
	SELECT yc.id, yc.idaccount, yc.idbanbe, tk.username, tk.img
	FROM DSYeuCauKetBan yc, TaiKhoan tk
	WHERE yc.idaccount = @idAccount AND yc.yeucau = 0 AND yc.idbanbe = tk.id 
END

CREATE PROC Insert_PhanHoi 
(
	@email varchar(100),
	@noidung nvarchar(max)
) 
AS BEGIN
	INSERT INTO PhanHoi (email, noidung, trangthai)
	VALUES( @email, @noidung, 0) 
END