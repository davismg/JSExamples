using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;

namespace WorkforcePlanning.Core.Data
{

    public partial class CostCentre : SapBase
    {
        public string DisplayName
        {
            get { return $"{Number} - {Name}"; }
        }
    }
}