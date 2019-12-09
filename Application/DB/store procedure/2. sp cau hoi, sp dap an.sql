USE [WebLapTrinh]
GO

CREATE PROC [dbo].[GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo](@idBaiHoc int, @idCapDo int)
AS BEGIN 
	SELECT cauhoi.id, cauhoi.tencauhoi
	FROM DSCauHoi cauhoi
	WHERE cauhoi.idcapdo = @idCapDo AND cauhoi.idbaihoc = @idBaiHoc
END
GO

CREATE PROC [dbo].[GET_DSDapAn_By_IdCauHoi](@idCauHoi int)
AS BEGIN 
	SELECT dapan.cautraloi, dapan.dapan
	FROM DSDapAn dapan
	WHERE dapan.idcauhoi = @idCauHoi
END