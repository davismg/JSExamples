using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;


namespace WorkforcePlanning.Core.Services.Interface
{
    public interface ILookupManagementService
    {
        OperationResult VerifyAndUpdate(CostCentre item);
        OperationResult VerifyAndUpdate(Goa item);
        OperationResult VerifyAndUpdate(Job item);
        OperationResult VerifyAndUpdate(JobFamily item);
        OperationResult VerifyAndUpdate(Location item);
        OperationResult VerifyAndUpdate(WorkSchedule item);
        OperationResult VerifyAndUpdate(PayScaleType item);
        OperationResult VerifyAndUpdate(PersonnelSubArea item);
        OperationResult VerifyAndUpdate(SubGroup item);
        OperationResult VerifyAndUpdate(EmploymentType item);
        OperationResult VerifyAndUpdate(LocationType locationType);

        int? GetIdFor(EmploymentType item);
        int? GetIdFor(SubGroup item);
        int? GetIdFor(PersonnelSubArea item);
        int? GetIdFor(PayScaleType item);
        int? GetIdFor(WorkSchedule item);
        int? GetIdFor(JobFamily item);
        int? GetIdFor(Job item);
        int? GetIdFor(Goa item);
        int? GetIdFor(CostCentre item);
        int? GetIdFor(Location item);
        
    }
}