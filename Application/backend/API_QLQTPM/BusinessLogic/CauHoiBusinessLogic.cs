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

        public async Task<GetDSCauHoiResponse> GetDSCauHoi(GetDSCauHoiParameter request)
        {
            var response = new GetDSCauHoiResponse();
            try
            {
                var result = _dataAccess.GetDSCauHoi(request);
                if (result != null)
                {
                    response.lstCauHoi = MapList<GET_DSCauHoi_Follow_IdBaiHoc_IdCapDo_Result, cauhoiDTO>(result.ToList());
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
