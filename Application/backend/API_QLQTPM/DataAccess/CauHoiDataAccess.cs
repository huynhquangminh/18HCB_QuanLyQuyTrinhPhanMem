using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface;
using DataAcceessInterface.Parameter;

namespace DataAccess
{
    public class CauHoiDataAccess : ICauHoiDataAccess
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
        public IEnumerable<GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo_Result> GetDSCauHoi(GetDSCauHoiParameter param)
        {
            return db.GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo(param.idBaiHoc, param.idCapDo);
        }
    }
}
