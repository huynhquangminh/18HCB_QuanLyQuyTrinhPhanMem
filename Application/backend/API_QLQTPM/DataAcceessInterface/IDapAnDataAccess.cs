using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface
{
    public interface IDapAnDataAccess
    {
        IEnumerable<GET_DSDapAn_Follow_IdBaiHoc_IdCapDo_Result> GetDSDapAn(GetDSDapAnParameter param);
    }
}
