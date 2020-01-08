using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;

namespace BusinessLogicInterface
{
    public interface IBaiHocBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        Task<GetDSBaiHocByIDResponse> GetDSBaiHocByID(GetDSBaiHocParameter param);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> ThemBaiHocPass(ThemBaiHocPassParameter request);


        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<GetDSBaiHocPassResponse> GetDSBaiHocPass(GetDSBaiHocPassParameter request);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> DeleteBHByID(DeleteBaiHocByIDParam request);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        Task<bool> DeleteBHByIDKhoaHoc(DeleteBaiHocByIDKhoaHocParam request);
    }
}
