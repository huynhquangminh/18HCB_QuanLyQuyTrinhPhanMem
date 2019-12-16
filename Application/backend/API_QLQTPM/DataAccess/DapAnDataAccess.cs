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
    public class DapAnDataAccess : IDapAnDataAccess
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
        public IEnumerable<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result> GetDSDapAn(GetDSDapAnParameter param)
        {
            return db.GET_DSDapAn_Follow_IdBaiHoc_IdCapDo(param.idBaiHoc, param.idCapDo);
        }
    }
}
