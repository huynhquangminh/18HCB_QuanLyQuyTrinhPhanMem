using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicInterface
{
    public interface IKhoaHocBusinessLogic
    {
        Task<GetKhoaHocResponse> GetDSKhoaHoc();
        Task<bool> ThemKhoaHoc(ThemKhoaHocParameter param);
        Task<bool> SuaKhoaHoc(ThemKhoaHocParameter param);
    }
}
