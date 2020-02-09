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
    public class BanBeBusinessLogic : BaseBusinessLogic, IBanBeBusinessLogic
    {
        private readonly IBanBeDataAccess _dataAccess;

        public BanBeBusinessLogic(IBanBeDataAccess dataAccess)
        {
            _dataAccess = dataAccess;
            ConfigAutoMapper();
        }

        public override void ConfigAutoMapper()
        {
            configMap = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Get_DSBanBe_By_IdAccount_Result, GetDSBanBeDto>();
                cfg.CreateMap<Get_DsYeuCauKetBan_Result, GetDSBanBeDto>();
            });
            mapper = configMap.CreateMapper();
        }

        public async Task<GetDSBanBeResponse> GetDSBanBe(GetDSBanBeParameter param)
        {
            var response = new GetDSBanBeResponse();
            try
            {
                var result = _dataAccess.GetDSBanBe(param);
                if (result != null)
                {
                    response.listBanBe = MapList<Get_DSBanBe_By_IdAccount_Result, GetDSBanBeDto>(result.ToList());
                    response.Success = true;
                }

            }
            catch (Exception)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }

        public async Task<GetDSBanBeResponse> GetDSYeuCauKetBan(GetDSBanBeParameter param)
        {
            var response = new GetDSBanBeResponse();
            try
            {
                var result = _dataAccess.GetDSYeuCauKetBan(param);
                if (result != null)
                {
                    response.listBanBe = MapList<Get_DsYeuCauKetBan_Result, GetDSBanBeDto>(result.ToList());
                    response.Success = true;
                }

            }
            catch (Exception)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }

        public async Task<bool> DeleteBanBe(DeleteBanBeParameter param)
        {
            var response = false;
            try
            {
                response = _dataAccess.DeleteBanBe(param);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }
        public async Task<bool> DeleteYeuCauKetBan(DeleteBanBeParameter param)
        {
            var response = false;
            try
            {
                response = _dataAccess.DeleteYeuCauKetBan(param);
                return await Task.FromResult(response);

            }
            catch (Exception ex)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<bool> InsertYeuCauKetBan(InsertYeuCauKetBanParameter param)
        {
            var response = false;
            try
            {
                response = _dataAccess.InsertYeuCauKetBan(param);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<bool> InsertBanBe(InsertYeuCauKetBanParameter param)
        {
            var response = false;
            try
            {
                response = _dataAccess.InsertBanBe(param);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<bool> UpdateYeuCauKetBan(InsertYeuCauKetBanParameter param)
        {
            var response = false;
            try
            {
                response = _dataAccess.UpdateYeuCauKetBan(param);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

    }
}
