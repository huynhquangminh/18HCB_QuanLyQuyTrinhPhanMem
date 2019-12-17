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
    public class ThongBaoController : ApiController
    {
        private readonly IThongBaoBusinessLogic _businessLogic;

        public ThongBaoController(IThongBaoBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult DanhSachThongBao(GetDSThongBaoParameter request)
        {
            var result = _businessLogic.GetDSThongBao(request);
            return new ActionResult<GetDSThongBaoResponse>(result.Result, Request);
        }
    }
}
