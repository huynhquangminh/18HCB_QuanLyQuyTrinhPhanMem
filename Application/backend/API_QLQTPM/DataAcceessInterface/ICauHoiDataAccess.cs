using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface.Parameter;

namespace DataAcceessInterface
{
    public interface ICauHoiDataAccess
    {
        IEnumerable<GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo_Result> GetDSCauHoi(GetDSCauHoiParameter param);

        /// <summary>
        /// 
        /// </summary>
        bool DeleteCauHoiByID(DeleteCauHoiByIDParam param);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        bool DeleteCauHoiByIDBaiHoc(DeleteCauHoiByIDBaiHocParam param);

        /// <summary>
        /// 
        /// </summary>
        bool ThemCauHoiByIdBaiHoc(ThemCauHoiByIdBaiHocParameter param);

        /// <summary>
        /// 
        /// </summary>
        bool UpdateCauHoiById(UpdateCauHoiByIdParameter param);

        /// <summary>
        /// 
        /// </summary>
        IEnumerable<Get_CauHoi_ById_Result> GetCauHoiById(GetCauHoiByIdParameter param);
    }
}
