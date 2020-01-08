using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface
{
    public interface IKhoaHocDataAccess
    {
        IEnumerable<Get_DSKhoaHoc_Result> GetDSKhoaHoc();
        bool ThemKhoaHoc(ThemKhoaHocParameter param);
        bool SuaKhoaHoc(ThemKhoaHocParameter param);

        bool DeleteKhoaHocByID(DeleteKHByIDParameter param);
    }
}
