using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface
{
    public interface IBieuDoTheoDoiDataAccess
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        IEnumerable<GET_BieuDoTheoDoi_Result> GetBieuDoTheoDoi(GetBieuDoTheoDoiParameter param);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        bool UpdateBieuDoTheoDoi(UpdateBieuDoTheoDoiParameter param);
    }
}
