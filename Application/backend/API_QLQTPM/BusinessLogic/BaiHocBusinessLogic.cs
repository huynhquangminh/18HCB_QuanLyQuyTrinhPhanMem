﻿using BaseApplication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicInterface;
using BusinessLogicInterface.Response;
using DataAcceessInterface;
using AutoMapper;
using EntityData;
using BusinessLogicInterface.Dtos;
using DataAcceessInterface.Parameter;

namespace BusinessLogic
{
    public class BaiHocBusinessLogic : BaseBusinessLogic, IBaiHocBusinessLogic
    {
        private readonly IBaiHocDataAccess _dataAccess;

        public BaiHocBusinessLogic(IBaiHocDataAccess dataAccess)
        {
            _dataAccess = dataAccess;
            ConfigAutoMapper();
        }

        public override void ConfigAutoMapper()
        {
            configMap = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Get_DSBaiHoc_ById_Result, baihocDTO>();
                cfg.CreateMap<Get_DSBaiHocPass_Result, GetDsBaiHocPassDto>();
            });
            mapper = configMap.CreateMapper();
        }

        public async Task<GetDSBaiHocByIDResponse> GetDSBaiHocByID(GetDSBaiHocParameter request)
        {
            var response = new GetDSBaiHocByIDResponse();
            try
            {
                var result = _dataAccess.GetDSBaiHoc(request);
                if (result != null)
                {
                    response.listBaiHoc = MapList<Get_DSBaiHoc_ById_Result, baihocDTO>(result.ToList());
                    response.Success = true;
                }

            }
            catch (Exception)
            {
                response.Success = false;
            }
            return await Task.FromResult(response);
        }

        public async Task<bool> ThemBaiHocPass(ThemBaiHocPassParameter request)
        {
            var response = false;
            try
            {
                response = _dataAccess.ThemBaiHocPass(request);
                return await Task.FromResult(response);

            }
            catch (Exception)
            {
                return await Task.FromResult(response);
            }
        }

       public async Task<GetDSBaiHocPassResponse> GetDSBaiHocPass(GetDSBaiHocPassParameter request)
        {
            var response = new GetDSBaiHocPassResponse();
            try
            {
                var result = _dataAccess.GetDSBaiHocPass(request);
                if (result != null)
                {
                    response.listDSBaiHocPass = MapList<Get_DSBaiHocPass_Result, GetDsBaiHocPassDto>(result.ToList());
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
