using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicInterface
{
    public interface IDapAnBusinessLogic
    {
        Task<GetDSDapAnResponse> GetDSDapAn(GetDSDapAnParameter request);
    }
}
