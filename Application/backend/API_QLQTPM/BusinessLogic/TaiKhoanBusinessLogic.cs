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
    }
}
