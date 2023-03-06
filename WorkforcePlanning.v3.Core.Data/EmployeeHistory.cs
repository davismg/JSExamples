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
    
    public partial class EmployeeHistory
    {
        public int ID { get; set; }
        public string Number { get; set; }
        public Nullable<int> SubGroupId { get; set; }
        public Nullable<int> EmploymentTypeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public System.DateTime BirthDate { get; set; }
        public System.DateTime StartDate { get; set; }
        public System.DateTime FirstWorkingDate { get; set; }
        public System.DateTime ProposedStartDate { get; set; }
        public Nullable<System.DateTime> ProposedEndDate { get; set; }
        public string Gender { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}
