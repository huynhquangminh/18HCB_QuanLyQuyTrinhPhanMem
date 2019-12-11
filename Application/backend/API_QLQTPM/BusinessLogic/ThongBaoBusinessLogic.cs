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
    public class ThongBaoBusinessLogic : BaseBusinessLogic, IThongBaoBusinessLogic
    {
        private readonly IThongBaoDataAccess _dataAccess;

        public ThongBaoBusinessLogic(IThongBaoDataAccess dataAccess)
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
                cfg.CreateMap<GetDSThongBaoResponse, thongbaoDTO>();
            });
            mapper = configMap.CreateMapper();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<GetDSThongBaoResponse> GetDSThongBao(GetDSThongBaoParameter request)
        {
            var response = new GetDSThongBaoResponse();
            try
            {
                var result = _dataAccess.GetDSThongBao(request);
                if (result != null)
                {
                    response.lstThongBao = MapList<GET_DSThongBao_Result, thongbaoDTO>(result.ToList());
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
