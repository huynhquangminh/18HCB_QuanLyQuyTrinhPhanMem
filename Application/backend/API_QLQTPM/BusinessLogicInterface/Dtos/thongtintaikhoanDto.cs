using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicInterface.Dtos
{
    public class thongtintaikhoanDto
    {
        public int id { get; set; }
        public int idkhoahoc { get; set; }
        public int idcapdo { get; set; }
        public int diemKN { get; set; }
        public Nullable<int> diemKNDay { get; set; }
        public Nullable<int> idbaihoc { get; set; }
        public int idtaikhoan { get; set; }
    }
}
