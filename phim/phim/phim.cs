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
    
    public partial class phim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public phim()
        {
            this.comment = new HashSet<comment>();
            this.ctDaodien = new HashSet<ctDaodien>();
            this.ctDienvien = new HashSet<ctDienvien>();
            this.ctlogin = new HashSet<ctlogin>();
            this.ctTheloai = new HashSet<ctTheloai>();
            this.tapphim = new HashSet<tapphim>();
        }
    
        public int id_phim { get; set; }
        public string ten_phim { get; set; }
        public string anh_daidien { get; set; }
        public string trailer { get; set; }
        public string mota { get; set; }
        public Nullable<int> imdb { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<comment> comment { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ctDaodien> ctDaodien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ctDienvien> ctDienvien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ctlogin> ctlogin { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ctTheloai> ctTheloai { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tapphim> tapphim { get; set; }
    }
}