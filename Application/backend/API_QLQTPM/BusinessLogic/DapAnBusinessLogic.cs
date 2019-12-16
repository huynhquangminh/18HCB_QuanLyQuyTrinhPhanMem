using AutoMapper;
using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Dtos;
using BusinessLogicInterface.Response;
using DataAcceessInterface;
using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class DapAnBusinessLogic : BaseBusinessLogic, IDapAnBusinessLogic
    {
        private readonly IDapAnDataAccess _dataAccess;

        public DapAnBusinessLogic(IDapAnDataAccess dataAccess)
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
                cfg.CreateMap<GetDSDapAnResponse, dapanDTO>();
            });
            mapper = configMap.CreateMapper();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<GetDSDapAnResponse> GetDSDapAn(GetDSDapAnParameter request)
        {
            var response = new GetDSDapAnResponse();
            try
            {
                var result = _dataAccess.GetDSDapAn(request);
                if (result != null)
                {
                    response.lstDapAn = MapList<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result, dapanDTO>(result.ToList());
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
