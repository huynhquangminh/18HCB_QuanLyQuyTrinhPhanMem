using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;

namespace BusinessLogicInterface
{
    public interface ICauHoiBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<GetDSCauHoiResponse> GetDSCauHoi(GetDSCauHoiParameter request);
    }
}
