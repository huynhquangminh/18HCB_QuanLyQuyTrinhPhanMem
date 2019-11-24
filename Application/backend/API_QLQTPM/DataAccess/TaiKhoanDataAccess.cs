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
    public class TaiKhoanDataAccess: ITaiKhoanDataAccess
    {
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        public ACCOUNT_LOGIN_Result login(LoginParameter param)
        {
            return db.ACCOUNT_LOGIN(param.user, param.pass).First();
        }
    }
}
