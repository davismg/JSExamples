namespace WorkforcePlanning.Core.Data
{
    public partial class PositionHistory
    {
        public PositionHistory()
        {
        }

        public PositionHistory(Position position)
        {
            CostCentreId = position.CostCentreId;
            EmploymentTypeId = position.EmploymentTypeId;
            FlowToCostCentreId = position.FlowToCostCentreId;
            HomeCostCentreId = position.HomeCostCentreId;
            GoaId = position.GoaId;
            JobFamilyId = position.JobFamilyId;
            JobId = position.JobId;
            LocationId = position.LocationId;
            WorkLocationId = position.WorkLocationId;
            WorkScheduleId = position.WorkScheduleId;
            PayScaleTypeId = position.PayScaleTypeId;
            PersonnelSubAreaId = position.PersonnelSubAreaId;
            SubGroupId = position.SubGroupId;

            PositionDataSetId = position.PositionDataSetId;
            DoesCountAsHeadCount = position.DoesCountAsHeadCount;
            EmploymentPercentage = position.EmploymentPercentage;
            FullTimeEquivalencyPercentage = position.FullTimeEquivalencyPercentage;
            HardToRecruit = position.HardToRecruit;
            IsCriticalSkill = position.IsCriticalSkill;
            Number = position.Number;
            OvertimeExempt = position.OvertimeExempt;
            PayScaleGroupMax = position.PayScaleGroupMax;
            PayScaleGroupMin = position.PayScaleGroupMin;
            PayScaleLevelMax = position.PayScaleLevelMax;
            PayScaleLevelMin = position.PayScaleLevelMin;
            PlannedEndDate = position.PlannedEndDate;
            PlannedStartDate = position.PlannedStartDate;
            PlanningSalary = position.PlanningSalary;
            PlanningSalaryBand = position.PlanningSalaryBand;
            Title = position.Title;

            EmployeeNumber = position.EmployeeNumber;
        }
        
    }
}