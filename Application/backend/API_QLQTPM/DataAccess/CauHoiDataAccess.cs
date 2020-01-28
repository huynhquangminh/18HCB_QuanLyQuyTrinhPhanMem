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
        public bool DeleteCauHoiByID(DeleteCauHoiByIDParam param)
        {
            var result = db.Delete_CauHoiById(param.ID) > 0 ? true : false;
            return result;
        }

        public bool DeleteCauHoiByIDBaiHoc(DeleteCauHoiByIDBaiHocParam param)
        {
            var result = db.Delete_CauHoiByIdBaiHoc(param.idBaiHoc) > 0 ? true : false;
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public IEnumerable<GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo_Result> GetDSCauHoi(GetDSCauHoiParameter param)
        {
            return db.GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo(param.idBaiHoc, param.idCapDo);
        }

        public bool ThemCauHoiByIdBaiHoc(ThemCauHoiByIdBaiHocParameter param)
        {
            var result = db.Insert_DSCauHoi(param.tencauhoi, param.idbaihoc, param.idcapdo);

            return result > 0 ? true : false;
        }

        public IEnumerable<Get_CauHoi_ById_Result> GetCauHoiById(GetCauHoiByIdParameter param)
        {
            return db.Get_CauHoi_ById(param.idCauHoi);
        }

        public bool UpdateCauHoiById(UpdateCauHoiByIdParameter param)
        {
            var result = db.Update_DSCauHoi(param.id, param.tencauhoi, param.idbaihoc, param.idcapdo);
            return result > 0 ? true : false;
        }
    }
}
