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
   public class PhanHoiDataAccess: IPhanHoiDataAccess
    {
        /// <summary>
        /// database
        /// </summary>
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public bool InsertPhanHoi(InsertPhanHoiParameter param)
        {
            var result = db.Insert_PhanHoi(param.email, param.noidung) > 0 ? true : false;
            return result;
        }
    }
}
