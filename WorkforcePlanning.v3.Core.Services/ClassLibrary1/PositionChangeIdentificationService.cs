using System.Collections.Generic;
using System.Linq;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;
using WorkforcePlanning.Core.Data.Domain.Constants;

namespace WorkforcePlanning.Core.Services
{
    public class PositionChangeIdentificationService
    {
        public List<Position> PriorPositions { get; set; }
        public List<Position> LatestPositions { get; set; }
        
        public List<DetectedChange> DetectedChanges { get; set; }

        public PositionChangeIdentificationService():this(new List<Position>(), new List<Position>(), new List<DetectedChange>() )
        {
            
        }

        public PositionChangeIdentificationService(List<Position> priorPositions, List<Position> latestPositions, List<DetectedChange> detectedChanges)
        {
            PriorPositions = priorPositions;
            LatestPositions = latestPositions;
            DetectedChanges = detectedChanges;

        }

        public void IdentifyChanges()
        {
            identifyNewPositions();
            identifyRemovedPositions();
            identifyNewFilledPositions();
            identifyNewlyEmptyPositions();
            identifyEmployeeChangedPositions();
            identifyChangedPositions();
        }

        private void identifyNewPositions()
        {
            foreach(var item in LatestPositions)
            {
                if (!PriorPositions.Exists(x => x.Number == item.Number)) DetectedChanges.Add(new DetectedChange { ChangeType = ChangeTypes.Added, Position = item });
            }
        }
        private void identifyRemovedPositions()
        {
            foreach (var item in PriorPositions)
            {
                if (!LatestPositions.Exists(x => x.Number == item.Number)) DetectedChanges.Add(new DetectedChange { ChangeType = ChangeTypes.Removed, Position = item });
            }
        }

        private void identifyNewlyEmptyPositions()
        {
            foreach (var position in LatestPositions)
            {
                if (position.IsFilled)continue;
                if (!PriorPositions.Exists(i => i.Number == position.Number)) continue;
                if (PriorPositions.First(i => i.Number == position.Number).IsFilled && !position.IsFilled) DetectedChanges.Add(new DetectedChange { ChangeType = ChangeTypes.EmployeeRemoved, Position = position });
            }
        }

        private void identifyNewFilledPositions()
        {
            foreach (var position in LatestPositions)
            {
                var priorPosition = PriorPositions.FirstOrDefault(i => i.Number == position.Number);
                if (!position.IsFilled) continue;
                if (priorPosition == null) continue;
                if (!priorPosition.IsFilled && position.IsFilled) DetectedChanges.Add(new DetectedChange { ChangeType = ChangeTypes.EmployeeAssigned, Position = position });
            }

        }

        private void identifyEmployeeChangedPositions()
        {
            foreach (var position in LatestPositions)
            {
                var priorPosition = PriorPositions.FirstOrDefault(i => i.Number == position.Number);

                if (priorPosition == null) continue;
                if (!position.IsFilled) continue;
                if (!priorPosition.IsFilled) continue;

                if(priorPosition.Employee.Number == position.Employee.Number) continue;
                if(priorPosition.Employee.Number != position.Employee.Number) DetectedChanges.Add(new DetectedChange { ChangeType = ChangeTypes.EmployeeChanged, Position = position });
            }
        }
        private void identifyChangedPositions()
        {
            //todo: need to implement
        }

    }
}
