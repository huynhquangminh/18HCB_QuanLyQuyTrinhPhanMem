namespace DataAcceessInterface
{
    using DataAcceessInterface.Parameter;
    using EntityData;

    /// <summary>
    /// Defines the <see cref="ITaiKhoanDataAccess" />
    /// </summary>
    public interface ITaiKhoanDataAccess
    {
        /// <summary>
        /// The login
        /// </summary>
        /// <param name="param">The param<see cref="LoginParameter"/></param>
        /// <returns>The <see cref="ACCOUNT_LOGIN_Result"/></returns>
        ACCOUNT_LOGIN_Result login(LoginParameter param);

        /// <summary>
        /// The ThemTaiKhoan
        /// </summary>
        /// <param name="param">The param<see cref="LoginParameter"/></param>
        /// <returns>The <see cref="bool"/></returns>
        bool ThemTaiKhoan(LoginParameter param);

        /// <summary>
        /// The getDSThongTinTaiKhoan
        /// </summary>
        /// <param name="param">The param<see cref="GetThongTinTaiKhoanParameter"/></param>
        /// <returns>The <see cref="GET_THONGTINTAIKHOAN_Result"/></returns>
        GET_THONGTINTAIKHOAN_Result getDSThongTinTaiKhoan(GetThongTinTaiKhoanParameter param);
    }
}
