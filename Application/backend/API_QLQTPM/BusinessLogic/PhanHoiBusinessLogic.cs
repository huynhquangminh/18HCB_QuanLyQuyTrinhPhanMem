using AutoMapper;
using BaseApplication;
using BusinessLogicInterface;
using DataAcceessInterface;
using DataAcceessInterface.Parameter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class PhanHoiBusinessLogic : BaseBusinessLogic, IPhanHoiBusinessLogic
    {
        private readonly IPhanHoiDataAccess _dataAccess;

        public PhanHoiBusinessLogic(IPhanHoiDataAccess dataAccess)
        {
            _dataAccess = dataAccess;
            ConfigAutoMapper();
        }

        /// <summary>
        /// ConfigAutoMapper
        /// </summary>
        public override void ConfigAutoMapper()
        {
            //configMap = new MapperConfiguration(cfg =>
            //{
            //    cfg.CreateMap<GetDSThongBaoResponse, thongbaoDTO>();
            //});
            //mapper = configMap.CreateMapper();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<bool> InsertPhanHoi(InsertPhanHoiParameter request)
        {
            var response = false;
            try
            {
                response = _dataAccess.InsertPhanHoi(request);
                return await Task.FromResult(response);

            }
            catch (Exception ex)
            {
                return await Task.FromResult(response);
            }
        }
    }
}
