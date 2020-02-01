using BusinessLogicInterface.Response;
using DataAcceessInterface.Parameter;
using System.Threading.Tasks;

namespace BusinessLogicInterface
{
    public interface IBanBeBusinessLogic
    {
        Task<GetDSBanBeResponse> GetDSBanBe(GetDSBanBeParameter param);
        Task<GetDSBanBeResponse> GetDSYeuCauKetBan(GetDSBanBeParameter param);
        Task<bool> DeleteBanBe(DeleteBanBeParameter param);
        Task<bool> DeleteYeuCauKetBan(DeleteBanBeParameter param);
        Task<bool> InsertYeuCauKetBan(InsertYeuCauKetBanParameter param);
    }
}
