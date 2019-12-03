using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface;
using EntityData;

namespace DataAccess
{
    public class LoaiDiemKNDataAccess : ILoaiDiemKNDataAccess
    {
        /// <summary>
        /// database
        /// </summary>
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Get_LoaiDiemKinhNghiem_Result> GetDSLoaiDiemKinhNghiem()
        {
            return db.Get_LoaiDiemKinhNghiem();
        }
    }
}
