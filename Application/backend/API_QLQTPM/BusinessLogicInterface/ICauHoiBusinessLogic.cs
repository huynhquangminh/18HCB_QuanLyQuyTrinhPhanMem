using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;

namespace BusinessLogicInterface
{
    public interface ICauHoiBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<GetDSCauHoiResponse> GetDSCauHoi(GetDSCauHoiParameter request);

        Task<bool> DeleteCauHoiByID(DeleteCauHoiByIDParam request);

        Task<bool> DeleteCauHoiByIDBaiHoc(DeleteCauHoiByIDBaiHocParam request);

        Task<bool> ThemCauHoiByIDBaiHoc(ThemCauHoiByIdBaiHocParameter request);

        Task<bool> SuaCauHoiByID(UpdateCauHoiByIdParameter request);

        Task<GetDSCauHoiResponse> GetCauHoiById(GetCauHoiByIdParameter request);
    }
}
