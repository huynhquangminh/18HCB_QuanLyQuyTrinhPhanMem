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
	SELECT TOP 1 id, idkhoahoc, idcapdo, diemKN, diemKNDay, idtaikhoan
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
	SELECT idcauhoi, cautraloi, dapan
	FROM DSDapAn
	WHERE idcauhoi IN (SELECT ID 
						FROM DSCauHoi 
						WHERE idbaihoc = @idBaiHoc AND idcapdo = @idcapdo
						GROUP BY ID)
END