using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace api.Controllers
{
    public class LoaiDiemKNController : ApiController
    {
        private readonly ILoaiDiemKNBusinessLogic _businessLogic;

        public LoaiDiemKNController(ILoaiDiemKNBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpGet]
        public IHttpActionResult GetDSLoaiDiemKN()
        {
            var result = _businessLogic.GetDSLoaiDiemKinhNghiem();
            return new ActionResult<GetLoaiDiemKNResponse>(result.Result, Request);
        }
    }
}
