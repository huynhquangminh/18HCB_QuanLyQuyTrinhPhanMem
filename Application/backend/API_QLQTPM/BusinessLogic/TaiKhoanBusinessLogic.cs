using AutoMapper;
using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Dtos;
using BusinessLogicInterface.Requests;
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
    public class TaiKhoanBusinessLogic : BaseBusinessLogic, ITaiKhoanBusinessLogic
    {
        private readonly ITaiKhoanDataAccess _dataAccess;

        public TaiKhoanBusinessLogic(ITaiKhoanDataAccess dataAccess)
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
                cfg.CreateMap<ACCOUNT_LOGIN_Result, loginDto>();
                cfg.CreateMap<GET_THONGTINTAIKHOAN_Result, thongtintaikhoanDto>();
                cfg.CreateMap<Get_all_account_same_khoahoc_Result, accountsamekhDTO>();
            });
            mapper = configMap.CreateMapper();
        }

        public async Task<LoginResponse> Login(LoginParameter request)
        {
            var response = new LoginResponse();
            try
            {
                var result = _dataAccess.login(request);
                if (result != null)
                {
                    response.accountLogin = mapper.Map<ACCOUNT_LOGIN_Result, loginDto>(result);
                    response.Success = true;
                }

            }
            catch (Exception)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }

        public async Task<bool> ThemTaiKhoan(LoginParameter request)
        {
            var response = false;
            try
            {
                response = _dataAccess.ThemTaiKhoan(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<ThongTaiKhoanResponse> GetThongTinTaiKhoan(GetThongTinTaiKhoanParameter request)
        {
            var response = new ThongTaiKhoanResponse();
            try
            {
                var result = _dataAccess.getDSThongTinTaiKhoan(request);
                if (result != null)
                {
                    response.thongTinTaiKhoan = mapper.Map<GET_THONGTINTAIKHOAN_Result, thongtintaikhoanDto>(result);
                    response.Success = true;
                }

            }
            catch (Exception)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<bool> UpdatePassword(UpdatePasswordParameter request)
        {
            var response = false;
            try
            {
                response = _dataAccess.UpdatePassword(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<bool> ThemThongTinTaiKhoan(ThemThongTinTaiKhoanParameter request)
        {
            var response = false;
            try
            {
                response = _dataAccess.ThemThongTinTaiKhoan(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

        public async Task<GetAllAccSameKHResponse> GetAllAccSameKH(GetAllAccountSameKHParam request)
        {
            var response = new GetAllAccSameKHResponse();
            try
            {
                var result = _dataAccess.GetAllAccSameKH(request);
                if (result != null)
                {
                    response.lstAccSameKH = MapList<Get_all_account_same_khoahoc_Result, accountsamekhDTO>(result.ToList());
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
