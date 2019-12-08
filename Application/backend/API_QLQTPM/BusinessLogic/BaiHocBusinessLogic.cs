using BaseApplication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicInterface;
using BusinessLogicInterface.Response;
using DataAcceessInterface;
using AutoMapper;
using EntityData;
using BusinessLogicInterface.Dtos;
using DataAcceessInterface.Parameter;

namespace BusinessLogic
{
    public class BaiHocBusinessLogic : BaseBusinessLogic, IBaiHocBusinessLogic
    {
        private readonly IBaiHocDataAccess _dataAccess;

        BaiHocBusinessLogic(IBaiHocDataAccess dataAccess)
        {
            _dataAccess = dataAccess;
            ConfigAutoMapper();
        }

        public override void ConfigAutoMapper()
        {
            configMap = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Get_DSBaiHoc_ById_Result, baihocDTO>();
            });
            mapper = configMap.CreateMapper();
        }

        public async Task<GetDSBaiHocByIDResponse> GetDSBaiHocByID(GetDSBaiHocParameter request)
        {
            var response = new GetDSBaiHocByIDResponse();
            try
            {
                var result = _dataAccess.GetDSBaiHoc(request);
                if (result != null)
                {
                    response.BaiHoc = mapper.Map<Get_DSBaiHoc_ById_Result, baihocDTO>(result);
                    response.Success = true;
                }

            }
            catch (Exception)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }
    }
}
