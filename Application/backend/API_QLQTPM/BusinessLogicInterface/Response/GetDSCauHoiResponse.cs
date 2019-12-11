using BaseApplication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicInterface.Dtos;

namespace BusinessLogicInterface.Response
{
    public class GetDSCauHoiResponse : BaseResponse
    {
        public List<cauhoiDTO> lstCauHoi { get; set; }
    }
}
