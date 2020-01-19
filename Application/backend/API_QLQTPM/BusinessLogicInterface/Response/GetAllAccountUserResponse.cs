using BaseApplication;
using BusinessLogicInterface.Dtos;
using System.Collections.Generic;

namespace BusinessLogicInterface.Response
{
    public class GetAllAccountUserResponse : BaseResponse
    {
        public List<GetAllAccountUserDto> listAccount { get; set; }
    }
}
