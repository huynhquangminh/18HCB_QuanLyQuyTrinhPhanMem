using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace api.Controllers
{
    public class BaiHocController : ApiController
    {
        private readonly IBaiHocBusinessLogic _businessLogic;

        public BaiHocController(IBaiHocBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// get khoa hoc
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult DanhSachBaiHoc(GetDSBaiHocParameter dataRequest)
        {
            var result = _businessLogic.GetDSBaiHocByID(dataRequest);
            return new ActionResult<GetDSBaiHocByIDResponse>(result.Result, Request);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="dataRequest"></param>
        /// <returns></returns>
        [HttpPost]
        public IHttpActionResult ThemBaiHocPass(ThemBaiHocPassParameter dataRequest)
        {
            var result = _businessLogic.ThemBaiHocPass(dataRequest);
            return new ActionResult<bool>(result.Result, Request);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="dataRequest"></param>
        /// <returns></returns>
        [HttpPost]
        public IHttpActionResult GetDanhSachBaiHocPass(GetDSBaiHocPassParameter dataRequest)
        {
            var result = _businessLogic.GetDSBaiHocPass(dataRequest);
            return new ActionResult<GetDSBaiHocPassResponse>(result.Result, Request);
        }
    }
}
