using BaseApplication;
using BusinessLogicInterface.Dtos;
using System.Collections.Generic;

namespace BusinessLogicInterface.Response
{
    public class GetDSBanBeResponse: BaseResponse
    {
        public List<GetDSBanBeDto> listBanBe { get; set; }
    }
}
