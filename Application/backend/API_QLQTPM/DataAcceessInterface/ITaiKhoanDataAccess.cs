using DataAcceessInterface.Parameter;
using EntityData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface
{
   public interface ITaiKhoanDataAccess
    {
         ACCOUNT_LOGIN_Result login(LoginParameter param );
    }
}
