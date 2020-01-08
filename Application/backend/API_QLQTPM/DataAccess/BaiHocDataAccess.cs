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
        public IEnumerable<Get_DSBaiHoc_ById_Result> GetDSBaiHoc(GetDSBaiHocParameter param)
        {
            return db.Get_DSBaiHoc_ById(param.id);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public bool ThemBaiHocPass(ThemBaiHocPassParameter param)
        {
            var result = db.ThemBaiHocPass(param.idTTTaiKhoan, param.idBaiHoc) > 0 ? true : false;
            return result;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public IEnumerable<Get_DSBaiHocPass_Result> GetDSBaiHocPass(GetDSBaiHocPassParameter param)
        {
            return db.Get_DSBaiHocPass(param.idTTTaiKhoan);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public bool ThemBaiHoc(ThemBaiHocParameter param)
        {
            var result = db.Insert_DSBaiHoc(param.tenbaihoc, param.idkhoahoc) > 0 ? true : false;
             return result;
        }
        public bool DeleteBaiHocByID(DeleteBaiHocByIDParam param)
        {
            var result = db.Delete_BaiHocById(param.ID) > 0 ? true : false;
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public bool SuaBaiHoc(ThemBaiHocParameter param)
        {
            var result = db.Update_DSBaiHoc(param.id, param.tenbaihoc, param.idkhoahoc) > 0 ? true : false;
            return result;
        }

        public bool DeleteBaiHocByIDKhoaHoc(DeleteBaiHocByIDKhoaHocParam param)
        {
            var result = db.Delete_BaiHocByIdKhoaHoc(param.idKhoaHoc) > 0 ? true : false;
            return result;
        }
    }
}
