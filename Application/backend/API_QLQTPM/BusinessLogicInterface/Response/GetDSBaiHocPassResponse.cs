using BaseApplication;
using BusinessLogicInterface.Dtos;
using System.Collections.Generic;
namespace BusinessLogicInterface.Response
{
    public class GetDSBaiHocPassResponse : BaseResponse
    {
        public List<GetDsBaiHocPassDto> listDSBaiHocPass { get; set; }
    }
}
