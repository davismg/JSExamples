//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WorkforcePlanning.Core.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class JobFamily
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public JobFamily()
        {
            this.Positions = new HashSet<Position>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Number { get; set; }
        public string ModifiedBy { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public System.DateTime EffectiveFromDate { get; set; }
        public Nullable<System.DateTime> EffectiveToDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Position> Positions { get; set; }
    }
}