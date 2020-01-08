using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface.Parameter;

namespace DataAcceessInterface
{
    public interface IKhoaHocDataAccess
    {
        IEnumerable<Get_DSKhoaHoc_Result> GetDSKhoaHoc();

        bool DeleteKhoaHocByID(DeleteKHByIDParameter param);
    }
}
