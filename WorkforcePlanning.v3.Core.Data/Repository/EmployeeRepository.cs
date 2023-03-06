using System;
using System.Data.Entity.Migrations;
using System.Linq;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;

namespace WorkforcePlanning.Core.Data.Repository
{
    public class EmployeeRepository : RepositoryBase<Employee>
    {
        public new OperationResult Save(Employee employee)
        {
            if (GetWhere(i => i.Number == employee.Number).Any()) return Update(employee);

            return Add(employee);
        }

        private OperationResult Update(Employee employee)
        {
            var result = new OperationResult();
            try
            {
                var dbEmployee = GetWhere(i => i.Number == employee.Number).First();
                mapDbObject(dbEmployee, employee);

                Context.Employees.AddOrUpdate(dbEmployee);
                Context.SaveChanges();
            }
            catch (Exception e)
            {
                result.InvalidateAndAddMessage($"Unable to update employee with number {employee.Number}. {e.Message}");
            }

            return result;
        }

        private OperationResult Add(Employee employee)
        {
            var result = new OperationResult();
            try
            {
                employee.CreatedDate = DateTime.Now;
                employee.CreatedBy = "System";

                Context.Employees.Add(employee);
                Context.SaveChanges();
            }
            catch (Exception e)
            {
                result.InvalidateAndAddMessage($"Unable to update employee with number {employee.Number}. {e.Message}");
            }

            return result;
        }

        private void mapDbObject(Employee dbEmployee, Employee employee)
        {
            dbEmployee.BirthDate = employee.BirthDate;
            dbEmployee.EmploymentTypeId = employee.EmploymentTypeId;
            dbEmployee.FirstName = employee.FirstName;
            dbEmployee.FirstWorkingDate = employee.FirstWorkingDate;
            dbEmployee.Gender = employee.Gender;
            dbEmployee.LastName = employee.LastName;
            dbEmployee.ProposedEndDate = employee.ProposedEndDate;
            dbEmployee.ProposedStartDate = employee.ProposedStartDate;
            dbEmployee.StartDate = employee.StartDate;
            dbEmployee.SubGroupId = employee.SubGroupId;

//            if (!employee.EmploymentTypeId.HasValue || employee.EmploymentTypeId == 0) dbEmployee.NullEmploymentType = true;
//            if (!employee.SubGroupId.HasValue || employee.SubGroupId == 0) dbEmployee.NullSubGroup = true;


        }
    }
}