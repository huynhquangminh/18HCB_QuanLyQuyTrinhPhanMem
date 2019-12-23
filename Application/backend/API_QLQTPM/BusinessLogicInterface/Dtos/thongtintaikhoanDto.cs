using System;
namespace BusinessLogicInterface.Dtos
{
    public class thongtintaikhoanDto
    {
        public int id { get; set; }
        public int idkhoahoc { get; set; }
        public int idcapdo { get; set; }
        public int diemKN { get; set; }
        public Nullable<int> diemKNDay { get; set; }
        public int idtaikhoan { get; set; }
        public Nullable<System.DateTime> ngayhoc { get; set; }
    }
}
