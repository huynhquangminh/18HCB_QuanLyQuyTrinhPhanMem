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

        public bool UpdateBieuDoTheoDoi(UpdateBieuDoTheoDoiParameter param)
        {
            var res = db.INSERT_OR_UPDATE_BieuDoTheoDoi(param.idTaikhoan, param.Thu2, param.Thu3, param.Thu4, param.Thu5, param.Thu6, param.Thu7, param.ChuNhat,param.DiemTong, param.NgayHienTai);
            return res > 0 ? true : false;
        }
    }
}
