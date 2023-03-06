using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;

namespace WorkforcePlanning.Core.Data
{
    public partial class PlannedPositionRevision : ModelBase
    {
        public Position BasePosition { get; set; }
        public Position RevisedRevision { get; set; }

        
    }
}