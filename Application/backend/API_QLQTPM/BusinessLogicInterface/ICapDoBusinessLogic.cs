using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;
using System.Threading.Tasks;

namespace BusinessLogicInterface
{
    public interface ICapDoBusinessLogic
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        Task<GetCapDoResponse> GetCapDo();
    }
}
