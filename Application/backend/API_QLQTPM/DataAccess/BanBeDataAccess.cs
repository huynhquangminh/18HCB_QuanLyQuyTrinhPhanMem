using DataAcceessInterface;
using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class BanBeDataAccess : IBanBeDataAccess
    {
        /// Defines the db
        /// </summary>
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        public IEnumerable<Get_DSBanBe_By_IdAccount_Result> GetDSBanBe(GetDSBanBeParameter param)
        {
            return db.Get_DSBanBe_By_IdAccount(param.idAccount);
        }

        public IEnumerable<Get_DsYeuCauKetBan_Result> GetDSYeuCauKetBan(GetDSBanBeParameter param)
        {
            return db.Get_DsYeuCauKetBan(param.idAccount);
        }

        public bool DeleteBanBe(DeleteBanBeParameter param)
        {
            var result = db.Delete_BanBe(param.idbanbe, param.idaccount);
            return result > 0 ? true : false;
        }
        public bool DeleteYeuCauKetBan(DeleteBanBeParameter param)
        {
            var result = db.Delete_YeuCauKetBan(param.idbanbe, param.idaccount);
            return result > 0 ? true : false;
        }

        public bool InsertYeuCauKetBan(InsertYeuCauKetBanParameter param)
        {
            var result = db.INSERT_YeuCauKetBan(param.idAccount, param.idBanBe, param.yeucau);
            return result > 0 ? true : false;
        }
    }
}
