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
    public class BieuDoTheoDoiBusinessLogic : BaseBusinessLogic, IBieuDoTheoDoiBusinessLogic
    {
        private readonly IBieuDoTheoDoiDataAccess _dataAccess;

        public BieuDoTheoDoiBusinessLogic(IBieuDoTheoDoiDataAccess dataAccess)
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
                cfg.CreateMap<GetBieuDoTheoDoiResponse, bieudotheodoiDTO>();
            });
            mapper = configMap.CreateMapper();
        }


        public async Task<GetBieuDoTheoDoiResponse> GetBieuDoTheoDoi(GetBieuDoTheoDoiParameter request)
        {
            var response = new GetBieuDoTheoDoiResponse();
            try
            {
                var result = _dataAccess.GetBieuDoTheoDoi(request);
                if (result != null)
                {
                    response.lstBieuDoTheoDoi = MapList<GET_BieuDoTheoDoi_Result, bieudotheodoiDTO>(result.ToList());
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
