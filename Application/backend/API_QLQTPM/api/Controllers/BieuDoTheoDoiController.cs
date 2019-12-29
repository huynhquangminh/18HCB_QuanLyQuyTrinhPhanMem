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
    public class BieuDoTheoDoiController : ApiController
    {
        private readonly IBieuDoTheoDoiBusinessLogic _businessLogic;

        public BieuDoTheoDoiController(IBieuDoTheoDoiBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        [HttpPost]
        public IHttpActionResult GetBieuDoTheoDoi(GetBieuDoTheoDoiParameter request)
        {
            var result = _businessLogic.GetBieuDoTheoDoi(request);
            return new ActionResult<GetBieuDoTheoDoiResponse>(result.Result, Request);
        }
    }
}
