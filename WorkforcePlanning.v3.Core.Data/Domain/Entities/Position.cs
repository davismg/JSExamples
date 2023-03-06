using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;

namespace WorkforcePlanning.Core.Data
{
    public partial class Position : ModelBase
    {
        public void Initialize()
        {
            Employee = new Employee();
            CostCentre = new CostCentre();
            HomeCostCentre = new CostCentre();
            FlowToCostCentre = new CostCentre();
            WorkSchedule = new WorkSchedule();
            Location = new Location();
            WorkLocation = new Location();
            //DirectReports = new List<Position>();
            //ManagingPosition = new Position();
            PayScaleType = new PayScaleType();
            Job = new Job();
            JobFamily = new JobFamily();

            SubGroup = new SubGroup();
            EmploymentType = new EmploymentType();
            Goa = new Goa();
        }

        public string DisplayName => $"{Number}-{Title}";

        public bool IsFilled
        {
            get
            {
                return Employee != null;
                //if (HeldBy == null) return true;
                //if (EmployeesHeldBy == null) return false;
                //return EmployeesHeldBy.Any(item => item.EffectiveToDate == null);
            }
        }

        public void ClearObjects()
        {
            Employee = null;

            CostCentre = null;
            HomeCostCentre = null; 
            FlowToCostCentre = null;
            WorkSchedule = null;
            Location = null;
            WorkLocation = null;
            DirectReports = null;
            ManagingPosition = null;
            PayScaleType = null;
            Job = null;
            JobFamily = null;

            SubGroup = null;
            EmploymentType = null;
            Goa = null;
        }
    }
}