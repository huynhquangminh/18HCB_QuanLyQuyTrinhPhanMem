
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
        public IHttpActionResult ThongTinTaiKhoan(GetThongTinTaiKhoanParameter RequestData)
        {
            var result = _businessLogic.GetThongTinTaiKhoan(RequestData);
            return new ActionResult<ThongTaiKhoanResponse>(result.Result, Request);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="RequestData"></param>
        /// <returns></returns>
        [HttpPost]
        public IHttpActionResult UpdatePassword(UpdatePasswordParameter RequestData)
        {
            var result = _businessLogic.UpdatePassword(RequestData);
            return new ActionResult<bool>(result.Result, Request);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="RequestData"></param>
        /// <returns></returns>
        [HttpPost]
        public IHttpActionResult ThemThongTinTaiKhoan(ThemThongTinTaiKhoanParameter RequestData)
        {
            var result = _businessLogic.ThemThongTinTaiKhoan(RequestData);
            return new ActionResult<bool>(result.Result, Request);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="RequestData"></param>
        /// <returns></returns>
        [HttpPost]
        public IHttpActionResult GetAllAccountSameKhoaHoc(GetAllAccountSameKHParam RequestData)
        {
            var result = _businessLogic.GetAllAccSameKH(RequestData);
            return new ActionResult<GetAllAccSameKHResponse>(result.Result, Request);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="RequestData"></param>
        /// <returns></returns>
        [HttpPost]
        public IHttpActionResult UpdateAccountInfo(UpdateAccountInfoParameter RequestData)
        {
            var result = _businessLogic.UpdateAccountInfo(RequestData);
            return new ActionResult<bool>(result.Result, Request);
        }
    }
}