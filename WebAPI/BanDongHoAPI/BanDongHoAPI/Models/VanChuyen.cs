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
    
    public partial class VanChuyen
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public VanChuyen()
        {
            this.HoaDon = new HashSet<HoaDon>();
        }
    
        public int id_don_vi_van_chuyen { get; set; }
        public string ten_don_vi_van_chuyen { get; set; }
        public string dia_chi_don_vi_van_chuyen { get; set; }
        public string sdt_don_vi_van_chuyen { get; set; }
        public string email_don_vi_van_chuyen { get; set; }
        public decimal phi_van_chuyen { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDon> HoaDon { get; set; }
    }
}
