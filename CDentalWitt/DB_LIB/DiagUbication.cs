//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DB_LIB
{
    using System;
    using System.Collections.Generic;
    
    public partial class DiagUbication
    {
        public DiagUbication()
        {
            this.Diagpiece = new HashSet<Diagpiece>();
        }
    
        public int Id { get; set; }
        public string Bodypart { get; set; }
        public string Codification { get; set; }
    
        public virtual ICollection<Diagpiece> Diagpiece { get; set; }
    }
}