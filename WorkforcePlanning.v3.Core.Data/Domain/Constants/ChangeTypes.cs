using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkforcePlanning.Core.Data.Domain.Constants
{
    public class ChangeTypes
    {
        //I need to load these from the database
        public static readonly string Added = "Add";
        public static readonly string Removed = "Removed";
        public static readonly string EmployeeChanged = "EmployeeChanged";
        public static readonly string EmployeeRemoved = "EmployeeRemoved";
        public static readonly string EmployeeAssigned = "EmployeeAssigned";
        public static readonly string Changed = "Changed";

    }
}
