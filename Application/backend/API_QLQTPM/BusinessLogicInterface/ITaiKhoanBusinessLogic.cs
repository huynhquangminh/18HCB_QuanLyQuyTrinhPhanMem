using BusinessLogicInterface.Requests;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicInterface
{
    public interface ITaiKhoanBusinessLogic
    {
        Task<LoginResponse> Login(LoginParameter request);

        Task<bool> ThemTaiKhoan(LoginParameter request);

        Task<ThongTaiKhoanResponse> GetThongTinTaiKhoan(int idAccount);
    }
}
