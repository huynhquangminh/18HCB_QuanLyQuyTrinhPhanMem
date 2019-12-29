using BaseApplication;
using BusinessLogicInterface.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicInterface.Response
{
    public class GetAllAccSameKHResponse : BaseResponse
    {
        public List<accountsamekhDTO> lstAccSameKH { get; set; }
    }
}
