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
    
    public partial class Blog
    {
        public int id_blog { get; set; }
        public string username { get; set; }
        public Nullable<System.DateTime> time { get; set; }
        public string title { get; set; }
        public string image { get; set; }
        public string content { get; set; }
    
        public virtual Admin Admin { get; set; }
    }
}
