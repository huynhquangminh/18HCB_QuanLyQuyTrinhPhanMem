
--return >0 success
--		 -1 Required parameter
--		 -2 User not found
--		 -3 Error has occurred or duplicate username 
		 
CREATE PROC sp_InsertOrUpdateTaiKhoan
@ID int,
@username nvarchar(100),
@password varchar(100),
@email varchar(200),
@img varchar(200)
AS
	BEGIN TRY
		--insert
		IF (@ID < 1)
			BEGIN
				IF @username IS NULL OR @password IS NULL
				BEGIN
					RETURN(-1) --Required parameter
				END
				INSERT INTO TaiKhoan (username, [password], email, img)
				VALUES(@username, @password, @email, @img)

				return (select @@identity) --success
		
			END
		--update
		ELSE
			BEGIN
				--
				IF NOT EXISTS(SELECT 1 FROM TaiKhoan WHERE ID = @ID)
				BEGIN
					return (-2) --khong ton tai ID
				END

				UPDATE TaiKhoan
				SET email = @email, img = @img
				WHERE id = @ID

				return (@ID) --success
			END
	END TRY
	BEGIN CATCH
		RETURN (-3) --loi khac
	END CATCH
GO

--return >0 success
--		 -1 Required parameter
--		 -2 User not found
--		 -3 Error has occurred
CREATE PROC sp_ChangePassword
@ID int,
@password varchar(100)
AS
	BEGIN TRY
		IF @password IS NULL
			BEGIN
				RETURN(-1) --Required parameter
			END

		IF NOT EXISTS(SELECT 1 FROM TaiKhoan WHERE ID = @ID)
			BEGIN
				return (-2) --khong ton tai ID
			END

		UPDATE TaiKhoan
		SET [password] = @password
		WHERE id = @ID

		return (@ID) --success

	END TRY
	BEGIN CATCH
		RETURN (-3) --loi khac
	END CATCH
GO