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
    public class DapAnController : ApiController
    {
        private readonly IDapAnBusinessLogic _businessLogic;

        public DapAnController(IDapAnBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult GetDSDapAn(GetDSDapAnParameter request)
        {
            var result = _businessLogic.GetDSDapAn(request);
            return new ActionResult<GetDSDapAnResponse>(result.Result, Request);
        }
    }
}
