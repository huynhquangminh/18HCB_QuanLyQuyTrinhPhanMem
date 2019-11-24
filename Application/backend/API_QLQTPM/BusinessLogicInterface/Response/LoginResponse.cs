using BaseApplication;
using BusinessLogicInterface.Dtos;

namespace BusinessLogicInterface.Response
{
    public class LoginResponse : BaseResponse
    {
        public loginDto accountLogin { get; set; }
    }
}
