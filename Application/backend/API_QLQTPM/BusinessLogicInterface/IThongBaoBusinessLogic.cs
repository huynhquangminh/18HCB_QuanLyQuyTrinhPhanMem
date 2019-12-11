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
    }
}
