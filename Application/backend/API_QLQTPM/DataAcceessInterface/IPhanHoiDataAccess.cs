using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcceessInterface.Parameter;

namespace DataAcceessInterface
{
    public interface IPhanHoiDataAccess
    {
        bool InsertPhanHoi(InsertPhanHoiParameter param);
    }
}
