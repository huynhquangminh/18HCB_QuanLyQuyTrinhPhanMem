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
    public class ThongBaoDataAccess : IThongBaoDataAccess
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
        public IEnumerable<GET_DSThongBao_Result> GetDSThongBao(GetDSThongBaoParameter param)
        {
            return db.GET_DSThongBao(param.idaccount);
        }

        /// <summary>
        /// update thong bao
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public bool UpdateThongBao(UpdateThongBaoParameter param)
        {
            var result = db.UPDATE_DSThongBao_Follow_Id_IdAccount(param.id, param.idAccount) > 0 ? true : false;
            return result;
        }

        public bool InsertThongBao(InsertThongBaoParameter param)
        {
            var result = db.Insert_ThongBaoByIdAccount(param.idaccount, param.thongbao) > 0 ? true : false;
            return result;
        }
    }
}
