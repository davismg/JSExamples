using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.Entities;

namespace src.Models
{
    public class PositionViewModel : ViewModelBase
    {
        public Position Position { get; set; }
        public bool HasChanged { get; set; }

        public string PlannedStartDate => Position.PlannedStartDate?.ToShortDateString() ?? string.Empty;
        public string PlannedEndDate => Position.PlannedEndDate?.ToShortDateString() ?? string.Empty;

        public string HeldByName => Position.Employee?.FullName ?? string.Empty;

        public string ChangeSummary { get; set; }

        public void ApplyRevisions(Position revisedPosition)
        {

//            Position.CostCentre = revisedPosition.CostCentre;
            Position.CostCentreId = revisedPosition.CostCentreId;
            //Position.DirectReports = revisedPosition.DirectReports;
            Position.DoesCountAsHeadCount = revisedPosition.DoesCountAsHeadCount;
//            Position.EmployeeId = revisedPosition.EmployeeId;
            Position.EmploymentPercentage = revisedPosition.EmploymentPercentage;
//            Position.EmploymentType = revisedPosition.EmploymentType;
            Position.EmploymentTypeId = revisedPosition.EmploymentTypeId;
//            Position.FlowToCostCentre = revisedPosition.FlowToCostCentre;
            Position.FlowToCostCentreId = revisedPosition.FlowToCostCentreId;
            Position.FullTimeEquivalencyPercentage = revisedPosition.FullTimeEquivalencyPercentage;
//            Position.Goa = revisedPosition.Goa;
            Position.GoaId = revisedPosition.GoaId;
            Position.HardToRecruit = revisedPosition.HardToRecruit;
//            Position.Employee = revisedPosition.Employee;
//            Position.HeldByEmployeeNumber = revisedPosition.HeldByEmployeeNumber;
//            Position.HomeCostCentre = revisedPosition.HomeCostCentre;
            Position.HomeCostCentreId = revisedPosition.HomeCostCentreId;
            Position.IsCriticalSkill = revisedPosition.IsCriticalSkill;
//            Position.Job = revisedPosition.Job;
            Position.JobId = revisedPosition.JobId;
//            Position.JobFamily = revisedPosition.JobFamily;
            Position.JobFamilyId = revisedPosition.JobFamilyId;
//            Position.Location = revisedPosition.Location;
            Position.LocationId = revisedPosition.LocationId;
//            Position.ManagingPosition = revisedPosition.ManagingPosition;
//            Position.ManagingPositionId = revisedPosition.ManagingPositionId;
            Position.ManagingPositionNumber = revisedPosition.ManagingPositionNumber;
            Position.OvertimeExempt = revisedPosition.OvertimeExempt;
            Position.PayScaleGroupMax = revisedPosition.PayScaleGroupMax;
            Position.PayScaleGroupMin = revisedPosition.PayScaleGroupMin;
            Position.PayScaleLevelMax = revisedPosition.PayScaleLevelMax;
            Position.PayScaleLevelMin = revisedPosition.PayScaleLevelMin;
//            Position.PayScaleType = revisedPosition.PayScaleType;
            Position.PayScaleTypeId = revisedPosition.PayScaleTypeId;
//            Position.SubGroup = revisedPosition.SubGroup;
            Position.SubGroupId = revisedPosition.SubGroupId;
            Position.Title = revisedPosition.Title;
        }
    }
}