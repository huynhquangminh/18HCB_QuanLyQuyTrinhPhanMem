namespace DataAccess
{
    using DataAcceessInterface;
    using DataAcceessInterface.Parameter;
    using EntityData;
    using System;
    using System.Collections.Generic;
    using System.Globalization;
    using System.Linq;

    /// <summary>
    /// Defines the <see cref="TaiKhoanDataAccess" />
    /// </summary>
    public class TaiKhoanDataAccess : ITaiKhoanDataAccess
    {
        /// <summary>
        /// Defines the db
        /// </summary>
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        /// <summary>
        /// The login
        /// </summary>
        /// <param name="param">The param<see cref="LoginParameter"/></param>
        /// <returns>The <see cref="ACCOUNT_LOGIN_Result"/></returns>
        public ACCOUNT_LOGIN_Result login(LoginParameter param)
        {
            return db.ACCOUNT_LOGIN(param.user, param.pass).First();
        }

        /// <summary>
        /// The ThemTaiKhoan
        /// </summary>
        /// <param name="param">The param<see cref="LoginParameter"/></param>
        /// <returns>The <see cref="bool"/></returns>
        public bool ThemTaiKhoan(LoginParameter param)
        {
            return db.INSERT_ACCOUNT(param.user, param.pass) == 1 ? true : false;
        }

        public GET_THONGTINTAIKHOAN_Result getDSThongTinTaiKhoan(GetThongTinTaiKhoanParameter param)
        {
            return db.GET_THONGTINTAIKHOAN(param.idAccount).First();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public bool UpdatePassword(UpdatePasswordParameter param)
        {
            var result = db.Update_PassWord_Account(param.username, param.currentPass, param.newPass) > 0 ? true : false;
            return result;
        }

        public bool ThemThongTinTaiKhoan(ThemThongTinTaiKhoanParameter param)
        {
            var result = db.THEM_THONGTINTAIKHOAN(param.idkhoahoc, param.idcapdo, param.diemKN, param.diemKNDay, param.idtaikhoan, param.ngayhoc) > 0 ? true : false;
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public IEnumerable<Get_all_account_same_khoahoc_Result> GetAllAccSameKH(GetAllAccountSameKHParam param)
        {
            return db.Get_all_account_same_khoahoc(param.idTaiKhoan, param.idKhoaHoc);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public bool UpdateAccountInfo(UpdateAccountInfoParameter param)
        {
            var result = db.Update_AccountInfo(param.id, param.username, param.email, param.img) > 0 ? true : false;
            return result;
        }
    }
}
