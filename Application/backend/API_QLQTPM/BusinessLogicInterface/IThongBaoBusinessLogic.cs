using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityData;
using DataAcceessInterface.Parameter;
using BusinessLogicInterface.Response;

namespace BusinessLogicInterface
{
    public interface IThongBaoBusinessLogic
    {
        Task<GetDSThongBaoResponse> GetDSThongBao(GetDSThongBaoParameter request);

        /// <summary>
        /// update thong bao
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> UpdateThongBao(UpdateThongBaoParameter request);

        Task<bool> InsertThongBao(InsertThongBaoParameter request);
    }
}
