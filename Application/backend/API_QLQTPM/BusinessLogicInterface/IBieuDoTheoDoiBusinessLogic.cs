using BusinessLogicInterface.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface.Parameter;

namespace BusinessLogicInterface
{
    public interface IBieuDoTheoDoiBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<GetBieuDoTheoDoiResponse> GetBieuDoTheoDoi(GetBieuDoTheoDoiParameter request);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> UpdateBieuDoTheoDoi(UpdateBieuDoTheoDoiParameter request);
    }
}
