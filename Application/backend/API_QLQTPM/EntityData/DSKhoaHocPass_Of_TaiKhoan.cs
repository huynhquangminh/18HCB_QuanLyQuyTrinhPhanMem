//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityData
{
    using System;
    using System.Collections.Generic;
    
    public partial class DSKhoaHocPass_Of_TaiKhoan
    {
        public int id { get; set; }
        public int idTTTaiKhoan { get; set; }
        public Nullable<int> idKhoaHoc { get; set; }
    
        public virtual ThongTinTaiKhoan ThongTinTaiKhoan { get; set; }
    }
}
