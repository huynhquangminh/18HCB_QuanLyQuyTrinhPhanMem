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
    
    public partial class DSCauHoi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DSCauHoi()
        {
            this.DSDapAns = new HashSet<DSDapAn>();
        }
    
        public int id { get; set; }
        public string tencauhoi { get; set; }
        public Nullable<int> idbaihoc { get; set; }
        public int idcapdo { get; set; }
    
        public virtual CapDo CapDo { get; set; }
        public virtual DSBaiHoc DSBaiHoc { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DSDapAn> DSDapAns { get; set; }
    }
}
