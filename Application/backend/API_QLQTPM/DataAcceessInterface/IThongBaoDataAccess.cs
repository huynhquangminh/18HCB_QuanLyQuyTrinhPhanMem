using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityData;
using DataAcceessInterface.Parameter;

namespace DataAcceessInterface
{
    public interface IThongBaoDataAccess
    {
        IEnumerable<GET_DSThongBao_Result> GetDSThongBao(GetDSThongBaoParameter param);
    }
}
