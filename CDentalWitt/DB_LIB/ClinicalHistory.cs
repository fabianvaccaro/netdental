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
    
    public partial class ClinicalHistory
    {
        public ClinicalHistory()
        {
            this.Patient = new HashSet<Patient>();
        }
    
        public int Id { get; set; }
        public string PatId { get; set; }
    
        public virtual ICollection<Patient> Patient { get; set; }
        public virtual Tooth Tooth { get; set; }
    }
}
