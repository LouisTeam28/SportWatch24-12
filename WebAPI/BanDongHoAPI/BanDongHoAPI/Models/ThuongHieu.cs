//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BanDongHoAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ThuongHieu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThuongHieu()
        {
            this.SanPham = new HashSet<SanPham>();
        }
    
        public int id_thuong_hieu { get; set; }
        public string ten_thuong_hieu { get; set; }
        public string img_thuong_hieu { get; set; }
        public string dieu_huong_thuong_hieu { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPham> SanPham { get; set; }
    }
}
