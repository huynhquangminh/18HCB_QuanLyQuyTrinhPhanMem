using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcceessInterface.Parameter
{
    public class UpdatePasswordParameter
    {
        public string username { get; set; }
        public string currentPass { get; set; }
        public string newPass { get; set; }
    }
}
