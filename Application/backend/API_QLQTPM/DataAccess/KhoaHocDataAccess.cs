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
            var result = db.Delete_BaiHocById(param.ID) > 0 ? true : false;
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
    }
}
