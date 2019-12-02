using AutoMapper;
using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Dtos;
using BusinessLogicInterface.Response;
using DataAcceessInterface;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class CapDoBusinessLogic : BaseBusinessLogic, ICapDoBusinessLogic
    {
        private readonly ICapDoDataAccess _dataAccess;

        public CapDoBusinessLogic(ICapDoDataAccess dataAccess)
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
                cfg.CreateMap<Get_CapDo_Result, CapDoDTO>();
            });
            mapper = configMap.CreateMapper();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="capDoParameter"></param>
        /// <returns></returns>
        public async Task<GetCapDoResponse> GetCapDo()
        {
            var response = new GetCapDoResponse();
            try
            {
                var result = _dataAccess.GetDSCapDo();
                if (result != null)
                {
                    response.listCapDo = MapList<Get_CapDo_Result, CapDoDTO>(result.ToList());
                    response.Success = true;
                }

            }
            catch (Exception e)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }
    }
}
