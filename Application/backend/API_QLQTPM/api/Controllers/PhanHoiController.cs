using BaseApplication;
using BusinessLogicInterface;
using DataAcceessInterface.Parameter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace api.Controllers
{
    public class PhanHoiController : ApiController
    {
        private readonly IPhanHoiBusinessLogic _businessLogic;

        public PhanHoiController(IPhanHoiBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult InsertPhanHoi(InsertPhanHoiParameter request)
        {
            var result = _businessLogic.InsertPhanHoi(request);
            return new ActionResult<bool>(result.Result, Request);
        }
    }
}
