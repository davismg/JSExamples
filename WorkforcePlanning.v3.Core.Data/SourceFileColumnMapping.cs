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
    
    public partial class SourceFileColumnMapping
    {
        public int Id { get; set; }
        public int DataSourceFileId { get; set; }
        public string FieldName { get; set; }
        public int ColumnIndex { get; set; }
        public string ColumnLetter { get; set; }
        public string ModifiedBy { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public System.DateTime EffectiveFromDate { get; set; }
        public Nullable<System.DateTime> EffectiveToDate { get; set; }
    
        public virtual DataSourceFileConfiguration DataSourceFileConfiguration { get; set; }
    }
}
