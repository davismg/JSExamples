using System.ComponentModel.DataAnnotations;

namespace WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes
{
    public abstract class SapBase : ModelBase
    {

        public string Name { get; set; }

        public string Number { get; set; }
    }
}