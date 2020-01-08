using BusinessLogicInterface.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface.Parameter;

namespace BusinessLogicInterface
{
    public interface IKhoaHocBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        Task<GetKhoaHocResponse> GetDSKhoaHoc();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> DeleteKHByID(DeleteKHByIDParameter request);
    }
}
