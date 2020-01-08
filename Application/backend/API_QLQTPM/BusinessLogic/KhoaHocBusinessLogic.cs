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

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<bool> DeleteKHByID(DeleteKHByIDParameter request)
        {
            var response = false;
            try
            {
                response = _dataAccess.DeleteKhoaHocByID(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
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
            catch (Exception)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }
    }
}
