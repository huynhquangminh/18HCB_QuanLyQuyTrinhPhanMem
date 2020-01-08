using BusinessLogicInterface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using BaseApplication;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;


namespace api.Controllers
{
    public class KhoaHocController : ApiController
    {
        private readonly IKhoaHocBusinessLogic _businessLogic;

        public KhoaHocController(IKhoaHocBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// get khoa hoc
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult GetDSKhoaHoc()
        {
            var result = _businessLogic.GetDSKhoaHoc();
            return new ActionResult<GetKhoaHocResponse>(result.Result, Request);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult DeleteKhoaHocByID(DeleteKHByIDParameter request)
        {
            var result = _businessLogic.DeleteKHByID(request);
            return new ActionResult<bool>(result.Result, Request);
        }
    }
}