using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface;
using DataAcceessInterface.Parameter;
using EntityData;

namespace DataAccess
{
    public class BaiHocDataAccess : IBaiHocDataAccess
    {
        /// Defines the db
        /// </summary>
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public Get_DSBaiHoc_ById_Result GetDSBaiHoc(GetDSBaiHocParameter param)
        {
            return db.Get_DSBaiHoc_ById(param.id).First();
        }
    }
}
