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
    public class KhoaHocDataAccess : IKhoaHocDataAccess
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
        public bool DeleteKhoaHocByID(DeleteKHByIDParameter param)
        {
            var result = db.Delete_KhoaHocById(param.ID) > 0 ? true : false;
            return result;
        }

        /// <summary>
        /// get danh sach khoa hoc
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Get_DSKhoaHoc_Result> GetDSKhoaHoc()
        {
            return db.Get_DSKhoaHoc();
        }

        public bool ThemKhoaHoc(ThemKhoaHocParameter param)
        {
            var result = db.Insert_KhoaHoc(param.tenkhoahoc, param.imgkhoahoc) > 0 ? true : false;
            return true;
        }

        public bool SuaKhoaHoc(ThemKhoaHocParameter param)
        {
            var result = db.Update_KhoaHoc(param.id, param.tenkhoahoc, param.imgkhoahoc) > 0 ? true : false;
            return result;
        }
    }
}
