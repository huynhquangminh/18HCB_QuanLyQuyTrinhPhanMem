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
    public class BieuDoTheoDoiDataAccess : IBieuDoTheoDoiDataAccess
    {
        /// <summary>
        /// Defines the db
        /// </summary>
        private WebLapTrinhEntities db = new WebLapTrinhEntities();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public IEnumerable<GET_BieuDoTheoDoi_Result> GetBieuDoTheoDoi(GetBieuDoTheoDoiParameter param)
        {
            return db.GET_BieuDoTheoDoi(param.idTaiKhoan);
        }
    }
}
