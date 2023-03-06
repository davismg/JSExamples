using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;
using WorkforcePlanning.Core.Data.Repository;
using WorkforcePlanning.Core.Services.Interface;

namespace WorkforcePlanning.Core.Services
{
    public class DataSetService
    {
        private PositionDataSetRepository DataSetRepository { get; set; }
        private PositionRepository PositionRepository { get; set; }
        private EmployeeRepository EmployeeRepository { get; set; }
        private ILookupManagementService LookupService { get; set; }

        public PositionDataSet Model { get; set; }
        public OperationResult Result { get; set; }

        public DataSetService() : this(new PositionDataSetRepository(), new PositionRepository(), new EmployeeRepository())
        {
        }

        public DataSetService(PositionDataSetRepository dataSetRepository, PositionRepository positionRepository, EmployeeRepository employeeRepository)
        {
            DataSetRepository = dataSetRepository;
            PositionRepository = positionRepository;
            EmployeeRepository = employeeRepository;
            LookupService = new LookupManagementService();
        }

        public List<PositionDataSet> GetAll()
        {
            return DataSetRepository.GetAll().OrderBy(i => i.AsOfDate).ToList();
        }

        public void Save(PositionDataSet dataSet)
        {
            Model = dataSet;
            
            //if this is a pre-existing dataset, delete the existing records, based on asOfDate
            clearExistingDataSet();

            //check make sure the lookup values exist already
            verifyAndUpdateLookups();
            if (Result.IsSuccess == false) return;

            //load the Id's of the lookups and child objects into the object
            loadSystemIdsIntoDataSet();

            //Validate that there are no duplicate employeeID's
            Result = validateEmployeesInDataSet();
            if (!Result.IsSuccess)
            {
                return;
            }

            //Validate that there are no duplicate Positions
            Result = validatePositionsInDataSet();
            if (!Result.IsSuccess)
            {
                return;
            }

            //Load any new employees
            verifyAndUpdateEmployees();
            if (Result.IsSuccess == false) return;

            archiveExistingPositionData();
            if (Result.IsSuccess == false) return;

            PositionRepository.ClearContext();
            //Save the dataset itself
            Result = DataSetRepository.Save(dataSet);
            if (!Result.IsSuccess)
            {
                return;
            }

            dataSet.Id = Result.ObjectId.Value;

            //save the positions
            Result = PositionRepository.SaveAll(dataSet);
            if (!Result.IsSuccess)
            {
                return;
            }

            //update the position relationships with the Managing positions
            //            Result = PositionRepository.UpdateRelationships();

            //update the employees with their positions
            Result = PositionRepository.UpdatePositionReferences();

        }

        private void archiveExistingPositionData()
        {
            Result = PositionRepository.ArchiveCurrent();
        }

        private OperationResult validateEmployeesInDataSet()
        {
            var result = new OperationResult();
            var employeeNumbers = new List<string>();
            foreach (var item in Model.Positions)
            {
                if(string.IsNullOrEmpty(item.EmployeeNumber)) continue;
                if (employeeNumbers.Contains(item.EmployeeNumber))
                {
                    result.IsSuccess = false;
                    result.Message = "Unable to load dataset. There are multiple employee's with the same employee number.";
                    return result;
                }

                employeeNumbers.Add(item.Number);
            }
            result.IsSuccess = true;

            return result;
        }

        private OperationResult validatePositionsInDataSet()
        {
            var result = new OperationResult();
            var positionNumbers = new List<string>();
            foreach (var item in Model.Positions)
            {
                if (string.IsNullOrEmpty(item.Number)) continue;
                if (positionNumbers.Contains(item.Number))
                {
                    result.IsSuccess = false;
                    result.Message = "Unable to load dataset. There are multiple positions's with the same position number.";
                    return result;
                }

                positionNumbers.Add(item.Number);
            }
            result.IsSuccess = true;

            return result;
        }

        private void clearExistingDataSet()
        {
            //get the dataset covered by this date
            var existingDataset = DataSetRepository.GetDataSetValidFor(Model.AsOfDate);
            if (existingDataset == null) return;

            DataSetRepository.EndDate(existingDataset.Id, "PositionDataSets", "Id");
            
        }

        private void verifyAndUpdateEmployees()
        {
            foreach (var position in Model.Positions)
            {
                EmployeeRepository.Save(position.Employee);
            }
        }

        private void loadSystemIdsIntoDataSet()
        {
            foreach (var position in Model.Positions)
            {
                var result = new OperationResult();

                if (position.Employee != null)
                {
                    var employee = EmployeeRepository.GetWhere(i => i.Number == position.Employee.Number).FirstOrDefault();
                    if (employee != null)
                    {
                        employee.EmploymentTypeId = LookupService.GetIdFor(employee.EmploymentType);
                        employee.SubGroupId = LookupService.GetIdFor(employee.SubGroup);
                    }
                }

                position.EmploymentTypeId = LookupService.GetIdFor(position.EmploymentType);
                position.CostCentreId = LookupService.GetIdFor(position.CostCentre);
                position.HomeCostCentreId = LookupService.GetIdFor(position.HomeCostCentre);
                position.FlowToCostCentreId = LookupService.GetIdFor(position.FlowToCostCentre);
                position.SubGroupId = LookupService.GetIdFor(position.SubGroup);
                position.JobId = LookupService.GetIdFor(position.Job);
                position.JobFamilyId = LookupService.GetIdFor(position.JobFamily);
                position.PersonnelSubAreaId = LookupService.GetIdFor(position.PersonnelSubArea);
                position.PayScaleTypeId = LookupService.GetIdFor(position.PayScaleType);
                position.WorkScheduleId = LookupService.GetIdFor(position.WorkSchedule);
//                position.WorkLocationId = LookupService.GetIdFor(position.WorkLocation);
//                position.LocationId = LookupService.GetIdFor(position.Location);
            }
        }

        private void verifyAndUpdateLookups()
        {
            foreach (var position in Model.Positions)
            {
                var result = new OperationResult();

                result = LookupService.VerifyAndUpdate(position.CostCentre);
                if(!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.FlowToCostCentre);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.HomeCostCentre);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.Goa);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

//                result = LookupService.VerifyAndUpdate(position.Location.LocationType);
//                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);
//
//                result = LookupService.VerifyAndUpdate(position.WorkLocation.LocationType);
//                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);
//
//
//                result = LookupService.VerifyAndUpdate(position.Location);
//                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);
//
//                result = LookupService.VerifyAndUpdate(position.WorkLocation);
//                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.WorkSchedule);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.Job);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.JobFamily);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.PayScaleType);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.PersonnelSubArea);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                result = LookupService.VerifyAndUpdate(position.SubGroup);
                if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                if (position.Employee != null)
                {
                    result = LookupService.VerifyAndUpdate(position.Employee.EmploymentType);
                    if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);

                    result = LookupService.VerifyAndUpdate(position.Employee.SubGroup);
                    if (!result.IsSuccess) Result.InvalidateAndAddMessage(result.Message);
                }

                Result = result;
            }

        }
    }
}