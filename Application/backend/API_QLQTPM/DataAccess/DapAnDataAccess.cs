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
    public class DapAnDataAccess : IDapAnDataAccess
    {
        private WebLapTrinhEntities db = new WebLapTrinhEntities();
        public IEnumerable<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result> GetDSDapAnByBaiHoc(GetDsDapAnParameter param)
        {
            return db.GET_DSDapAn_Follow_IdBaiHoc_IdCapDo(param.idBaiHoc, param.idCapDo);
        }
    }
}
