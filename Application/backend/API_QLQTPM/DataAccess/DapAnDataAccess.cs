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

        public bool DeleteDapAnByID(DeleteDapAnByIDParam param)
        {
            var r = db.Delete_DapAnById(param.ID) > 0 ? true : false;
            return r;
        }

        public bool DeleteDapAnByIDCauHoi(DeleteDapAnByIDCauHoiParam param)
        {
            var r = db.Delete_DapAnByIdCauHoi(param.idCauHoi) > 0 ? true : false;
            return r;
        }

        public IEnumerable<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result> GetDSDapAnByBaiHoc(GetDsDapAnParameter param)
        {
            return db.GET_DSDapAn_Follow_IdBaiHoc_IdCapDo(param.idBaiHoc, param.idCapDo);
        }
    }
}
