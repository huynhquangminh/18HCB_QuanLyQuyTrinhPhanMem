using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface
{
    public interface IDapAnDataAccess
    {
        IEnumerable<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result> GetDSDapAnByBaiHoc(GetDsDapAnParameter param);

        bool DeleteDapAnByID(DeleteDapAnByIDParam param);

        bool DeleteDapAnByIDCauHoi(DeleteDapAnByIDCauHoiParam param);

        IEnumerable<Get_DapAn_ByIdCauHoi_Result> GetDapAnByIdCauHoi(GetCauHoiByIdParameter param);

        bool ThemDapAnByIdCauHoi(ThemDapAnByIdCauHoiParameter param);
    }
}
