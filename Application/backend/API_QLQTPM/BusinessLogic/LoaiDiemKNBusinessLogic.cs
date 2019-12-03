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
    public class LoaiDiemKNBusinessLogic : BaseBusinessLogic, ILoaiDiemKNBusinessLogic
    {
        private readonly ILoaiDiemKNDataAccess _dataAccess;

        public LoaiDiemKNBusinessLogic(ILoaiDiemKNDataAccess dataAccess)
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
                cfg.CreateMap<GetLoaiDiemKNResponse, loaidiemknDTO>();
            });
            mapper = configMap.CreateMapper();
        }



        public async Task<GetLoaiDiemKNResponse> GetDSLoaiDiemKinhNghiem()
        {
            var response = new GetLoaiDiemKNResponse();
            try
            {
                var result = _dataAccess.GetDSLoaiDiemKinhNghiem();
                if (result != null)
                {
                    response.listLoaiDiemKinhNghiem = MapList<Get_LoaiDiemKinhNghiem_Result, loaidiemknDTO>(result.ToList());
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
