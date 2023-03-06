using WorkforcePlanning.Core.Data.Domain.Entities;

namespace WorkforcePlanning.Core.Data.Domain.ValueObjects
{
    public class DetectedChange
    {
        public Position Position { get; set; }
        public string ChangeType { get; set; }
    }
}
