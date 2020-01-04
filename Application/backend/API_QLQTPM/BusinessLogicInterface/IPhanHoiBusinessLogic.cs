using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface.Parameter;

namespace BusinessLogicInterface
{
    public interface IPhanHoiBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> InsertPhanHoi(InsertPhanHoiParameter request);
    }
}
