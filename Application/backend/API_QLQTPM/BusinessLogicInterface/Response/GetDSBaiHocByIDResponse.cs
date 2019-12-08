using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseApplication;
using BusinessLogicInterface.Dtos;

namespace BusinessLogicInterface.Response
{
    public class GetDSBaiHocByIDResponse : BaseResponse
    {
        public baihocDTO BaiHoc { get; set; }
    }
}
