select * from TaiKhoan;

declare @result int
EXEC @result = sp_InsertOrUpdateTaiKhoan -1, N'admin', '456', null, null;

if @result > 0
	begin
		print N'insert or update thanh cong ' + CONVERT(varchar(10), @result)
	end
if @result = -1
	begin
		print N'required'
	end

if @result = -2
	begin
		print N'not found'
	end

if @result = -3
	begin
		print N'Error'
	end



declare @ret_code  int
EXEC @ret_code = sp_ChangePassword 4, '123';
if @ret_code > 0
	begin
		print N'thanh cong ' + CONVERT(varchar(10), @ret_code)
	end
if @ret_code = -1
	begin
		print N'required'
	end

if @ret_code = -2
	begin
		print N'not found'
	end

if @ret_code = -3
	begin
		print N'Error'
	end
