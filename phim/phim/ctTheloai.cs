//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace phim
{
    using System;
    using System.Collections.Generic;
    
    public partial class ctTheloai
    {
        public int id_ctTheloai { get; set; }
        public Nullable<int> id_phim { get; set; }
        public Nullable<int> id_theLoai { get; set; }
    
        public virtual phim phim { get; set; }
        public virtual theloai_phim theloai_phim { get; set; }
    }
}
