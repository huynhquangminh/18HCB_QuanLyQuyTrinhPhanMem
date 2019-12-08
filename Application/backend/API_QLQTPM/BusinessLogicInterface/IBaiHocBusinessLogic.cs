using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;

namespace BusinessLogicInterface
{
    public interface IBaiHocBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        Task<GetDSBaiHocByIDResponse> GetDSBaiHocByID(GetDSBaiHocParameter param);
    }
}
