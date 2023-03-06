using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkforcePlanning.Core.Data.Domain.Constants
{
    public class FieldNames
    {
        //Employee Fields
        public static readonly string BirthDate = "BirthDate";
        public static string StartDate = "StartDate";
        public static string FirstName= "FirstName";
        public static string FirstWorkingDate = "FirstWorkingDate";
        public static string Gender = "Gender";
        public static string LastName ="LastName";
        public static string ProposedEndDate= "ProposedEndDate";
        public static string ProposedStartDate = "ProposedStartDate";
        public static string EmployeeNumber = "EmployeeNumber";


        //costCentreFields
        public static string CostCentreName = "CostCentreName";
        public static string CostCentreNumber = "CostCentreNumber";
        public static string HomeCostCentreName = "HomeCostCentreName";
        public static string HomeCostCentreNumber= "HomeCostCentreNumber";
        public static string FlowToCostCentreName = "FlowToCostCentreName";
        public static string FlowToCostCentreNumber = "FlowToCostCentreNumber";

        //GOA Fields
        public static string GoaName =  "GOAName";
        public static string GoaNumber =  "GOANumber";

        //Job Fields
        public static string JobName = "GOAName";
        public static string JobNumber = "GOANumber";

        //Job Family Fields
        public static string JobFamilyName = "GOAName";
        public static string JobFamilyNumber = "GOANumber";

        //location fields
        public static string LocationName = "LocationName";
        public static string LocationBuilding= "LocationBuilding";

        //work location fields
        public static string WorkLocationName = "WorkLocationName";
        public static string WorkLocationBuilding = "WorkLocationBuilding";

        //Position Fields
        public static string Number = "Number";
        public static string EmploymentPercentage = "EmploymentPercentage";
        public static string EmploymentType = "EmploymentType";
        public static string DoesCountAsHeadCount = "DoesCountAsHeadCount";
        public static string FullTimeEquivalencyPercentage = "FullTimeEquivalencyPercentage";
        public static string HardToRecruit = "HardToRecruit";
        public static string IsCriticalSkill = "IsCriticalSkill";
        public static string OvertimeExempt = "OvertimeExempt";
        public static string PayScaleGroupMax = "PayScaleGroupMax";
        public static string PayScaleGroupMin = "PayScaleGroupMin";
        public static string PayScaleLevelMax = "PayScaleLevelMax";
        public static string PayScaleLevelMin = "PayScaleLevelMin";
        public static string PayScaleType = "PayScaleType";
        public static string PlannedEndDate = "PlannedEndDate";
        public static string PlannedStartDate = "PlannedStartDate";
        public static string PersonnelSubArea = "PersonnelSubArea";
        public static string PlanningSalary = "PlanningSalary";
        public static string PlanningSalaryBand = "PlanningSalaryBand";
        public static string SubGroup = "SubGroup";
        public static string Title = "Title";
        public static string WorkSchedule = "WorkSchedule";
    }
}
