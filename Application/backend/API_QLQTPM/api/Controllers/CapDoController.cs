using System.Web.Http;
using BaseApplication;
using BusinessLogicInterface;
using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;

namespace api.Controllers
{
    public class CapDoController : ApiController
    {
        private readonly ICapDoBusinessLogic _businessLogic;

        public CapDoController(ICapDoBusinessLogic businessLogic)
        {
            _businessLogic = businessLogic;
        }

        /// <summary>
        /// get cap do
        /// </summary>
        /// <returns>IHttpActionResult</returns>
        [HttpGet]
        public IHttpActionResult GetCapDo()
        {
            var result = _businessLogic.GetCapDo();
            return new ActionResult<GetCapDoResponse>(result.Result, Request);
        }
    }
}