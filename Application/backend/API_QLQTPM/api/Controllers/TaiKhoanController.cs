
using System.Web.Http;
using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;

namespace api.Controllers
{
    public class TaiKhoanController : ApiController
    {
        private readonly ITaiKhoanBusinessLogic _businessLogic;

        public TaiKhoanController(ITaiKhoanBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// Login
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult Login(LoginParameter RequestData)
        {
            var result = _businessLogic.Login(RequestData);
            return new ActionResult<LoginResponse>(result.Result, Request);
        }

        /// <summary>
        /// ThemTaiKhoan
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult ThemTaiKhoan(LoginParameter RequestData)
        {
            var result = _businessLogic.ThemTaiKhoan(RequestData);
            return new ActionResult<bool>(result.Result, Request);
        }

        /// <summary>
        /// ThemTaiKhoan
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpPost]
        public IHttpActionResult ThongTinTaiKhoan(int idAccount)
        {
            var result = _businessLogic.GetThongTinTaiKhoan(idAccount);
            return new ActionResult<ThongTaiKhoanResponse>(result.Result, Request);
        }
    }
}