using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface
{
    public interface ILoaiDiemKNDataAccess
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        IEnumerable<Get_LoaiDiemKinhNghiem_Result> GetDSLoaiDiemKinhNghiem();
    }
}
