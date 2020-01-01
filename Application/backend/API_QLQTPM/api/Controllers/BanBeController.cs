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
    public class BanBeController : ApiController
    {
        private readonly IBanBeBusinessLogic _businessLogic;

        public BanBeController(IBanBeBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// get khoa hoc
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult DanhSachBanBe(GetDSBanBeParameter dataRequest)
        {
            var result = _businessLogic.GetDSBanBe(dataRequest);
            return new ActionResult<GetDSBanBeResponse>(result.Result, Request);
        }

        /// <summary>
        /// get khoa hoc
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult DanhSachYeuCauKetBan(GetDSBanBeParameter dataRequest)
        {
            var result = _businessLogic.GetDSYeuCauKetBan(dataRequest);
            return new ActionResult<GetDSBanBeResponse>(result.Result, Request);
        }

        /// <summary>
        /// get khoa hoc
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult XoaBanBe(DeleteBanBeParameter dataRequest)
        {
            var result = _businessLogic.DeleteBanBe(dataRequest);
            return new ActionResult<bool>(result.Result, Request);
        }

        /// <summary>
        /// get khoa hoc
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult XoaYeuCauKetBan(DeleteBanBeParameter dataRequest)
        {
            var result = _businessLogic.DeleteYeuCauKetBan(dataRequest);
            return new ActionResult<bool>(result.Result, Request);
        }
    }
}