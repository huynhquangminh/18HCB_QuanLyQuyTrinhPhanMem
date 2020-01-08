using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Dtos;
using BusinessLogicInterface.Response;
using DataAcceessInterface;
using DataAcceessInterface.Parameter;
using EntityData;

namespace BusinessLogic
{
    public class CauHoiBusinessLogic : BaseBusinessLogic, ICauHoiBusinessLogic
    {
        private readonly ICauHoiDataAccess _dataAccess;

        public CauHoiBusinessLogic(ICauHoiDataAccess dataAccess)
        {
            _dataAccess = dataAccess;
            ConfigAutoMapper();
        }

        /// <summary>
        /// ConfigAutoMapper
        /// </summary>
        public override void ConfigAutoMapper()
        {
            configMap = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<GetDSCauHoiResponse, cauhoiDTO>();
            });
            mapper = configMap.CreateMapper();
        }

        public async Task<bool> DeleteCauHoiByID(DeleteCauHoiByIDParam request)
        {
            var response = false;
            try
            {
                response = _dataAccess.DeleteCauHoiByID(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<GetDSCauHoiResponse> GetDSCauHoi(GetDSCauHoiParameter request)
        {
            var response = new GetDSCauHoiResponse();
            try
            {
                var result = _dataAccess.GetDSCauHoi(request);
                if (result != null)
                {
                    response.listCauHoi = MapList<GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo_Result, cauhoiDTO>(result.ToList());
                    response.Success = true;
                }

            }
            catch (Exception ex)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }
    }
}
