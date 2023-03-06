
using System.Linq.Expressions;
using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;


namespace WorkforcePlanning.Core.Data
{

    public partial class Employee : ModelBase
    {
        public void Initialize()
        {
            EmploymentType = new EmploymentType();
            SubGroup = new SubGroup();
        }


        public string FullName => $"{FirstName} {LastName}";
        
    }
}