using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface.Parameter
{
    public class UpdateAccountInfoParameter
    {
        public int id { get; set; }
        public string username { get; set; }
        public string email { get; set; }
        public string img { get; set; }
    }
}
