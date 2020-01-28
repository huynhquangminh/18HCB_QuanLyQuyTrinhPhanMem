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

        public override void ConfigAutoMapper()
        {
            configMap = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result, listDapAnDto>();
                cfg.CreateMap<Get_DapAn_ByIdCauHoi_Result, listDapAnDto>();
            });
            mapper = configMap.CreateMapper();
        }

        public async Task<bool> DeleteDapAnByID(DeleteDapAnByIDParam request)
        {
            var response = false;
            try
            {
                response = _dataAccess.DeleteDapAnByID(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<bool> DeleteDapAnByIDCauHoi(DeleteDapAnByIDCauHoiParam request)
        {
            var response = false;
            try
            {
                response = _dataAccess.DeleteDapAnByIDCauHoi(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<ListDapAnResponse> GetDSDapByBaiHoc(GetDsDapAnParameter param)
        {
            var response = new ListDapAnResponse();
            try
            {
                var result = _dataAccess.GetDSDapAnByBaiHoc(param);
                if (result != null)
                {
                    response.listDapAn = MapList<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result, listDapAnDto>(result.ToList());
                    response.Success = true;
                }

            }
            catch (Exception ex)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }

        public async Task<ListDapAnResponse> GetDapAnByIdCauHoi(GetCauHoiByIdParameter param)
        {
            var response = new ListDapAnResponse();
            try
            {
                var result = _dataAccess.GetDapAnByIdCauHoi(param);
                if (result != null)
                {
                    response.listDapAn = MapList<Get_DapAn_ByIdCauHoi_Result, listDapAnDto>(result.ToList());
                    response.Success = true;
                }

            }
            catch (Exception ex)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }

        public async Task<bool> ThemDapAnByIDCauHoi(ThemDapAnByIdCauHoiParameter param)
        {
            var response = false;
            try
            {
                response = _dataAccess.ThemDapAnByIdCauHoi(param);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }
    }
}
