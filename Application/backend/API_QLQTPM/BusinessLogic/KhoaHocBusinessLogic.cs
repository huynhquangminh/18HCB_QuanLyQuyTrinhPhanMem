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
using EntityData;

namespace BusinessLogic
{
    public class KhoaHocBusinessLogic : BaseBusinessLogic, IKhoaHocBusinessLogic
    {
        private readonly IKhoaHocDataAccess _dataAccess;

        public KhoaHocBusinessLogic(IKhoaHocDataAccess dataAccess)
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
                cfg.CreateMap<GetKhoaHocResponse, khoahocDTO>();
            });
            mapper = configMap.CreateMapper();
        }

        public async Task<GetKhoaHocResponse> GetDSKhoaHoc()
        {
            var response = new GetKhoaHocResponse();
            try
            {
                var result = _dataAccess.GetDSKhoaHoc();
                if (result != null)
                {
                    response.listKhoaHoc = MapList<Get_DSKhoaHoc_Result, khoahocDTO>(result.ToList());
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
