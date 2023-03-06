using System;
using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;

namespace WorkforcePlanning.Core.Data.Domain.ValueObjects
{
    public class RevisionStatus : ModelBase
    {
        public DateTime StatusDate { get; set; }
        public string Status { get; set; }
        public User SetBy { get; set; }
    }
}