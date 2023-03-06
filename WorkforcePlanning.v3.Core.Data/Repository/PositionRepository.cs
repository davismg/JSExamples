using System;
using System.Linq;
using WorkforcePlanning.Core.Data.Domain.Constants;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;

namespace WorkforcePlanning.Core.Data.Repository
{
    public class PositionRepository : RepositoryBase<Position>, IPositionRepository
    {
        public OperationResult Save(Position position)
        {
            return Add(position);
        }

        public Position Get(string number) => Context.Set<Position>().FirstOrDefault(i => i.Number == number);

        public OperationResult Add(Position position)
        {
            var result = new OperationResult { IsSuccess = true };

            try
            {
                //var dbPosition = new Position();
                //mapDbPosition(dbPosition, position);

                position.CreatedBy = "System";
                position.CreatedDate = DateTime.Now;

                Context.Positions.Add(position);
                Context.SaveChanges();
                
                return result;
            }
            catch (Exception e)
            {
                var x = e;
                throw;
            }
        }

//        public OperationResult Update(Position position)
//        {
//            var result = new OperationResult { IsSuccess = true };
//
//            try
//            {
//                var dbPosition = Context.Positions.FirstOrDefault(i => i.Id == position.Id);
//
//                if(dbPosition ==null) throw new DataException("Position update failed. A position with the provided id does not exist.");
//
//                mapDbPosition(dbPosition, position);
//
//                Context.Positions.AddOrUpdate(dbPosition);
//                Context.SaveChanges();
//
//                return result;
//            }
//            catch (Exception e)
//            {
//                result.IsSuccess = false;
//                result.Message = e.Message;
//                return result;
//            }
//        }

//        private void mapDbPosition(Position dbPosition, Position position)
//        {
//            //lookups
//            dbPosition.ManagingPosition = position.ManagingPosition;
//            dbPosition.CostCentreId = position.CostCentreId;
//            dbPosition.EmploymentTypeId = position.EmploymentTypeId;
//            dbPosition.FlowToCostCentreId = position.FlowToCostCentreId;
//            dbPosition.HomeCostCentreId = position.HomeCostCentreId;
//            dbPosition.GoaId = position.GoaId;
//            dbPosition.JobFamilyId = position.JobFamilyId;
//            dbPosition.JobId = position.JobId;
//            dbPosition.LocationId = position.LocationId;
//            dbPosition.WorkLocationId = position.WorkLocationId;
//            dbPosition.WorkScheduleId = position.WorkScheduleId;
//            dbPosition.PayScaleTypeId = position.PayScaleTypeId;
//            dbPosition.PersonnelSubAreaId = position.PersonnelSubAreaId;
//            dbPosition.SubGroupId = position.SubGroupId;
//
//            dbPosition.PositionDataSetId = position.PositionDataSetId;
//            dbPosition.DoesCountAsHeadCount = position.DoesCountAsHeadCount;
//            dbPosition.EmploymentPercentage = position.EmploymentPercentage;
//            dbPosition.FullTimeEquivalencyPercentage = position.FullTimeEquivalencyPercentage;
//            dbPosition.HardToRecruit = position.HardToRecruit;
//            dbPosition.IsCriticalSkill = position.IsCriticalSkill;
//            dbPosition.Number = position.Number;
//            dbPosition.OvertimeExempt = position.OvertimeExempt;
//            dbPosition.PayScaleGroupMax = position.PayScaleGroupMax;
//            dbPosition.PayScaleGroupMin = position.PayScaleGroupMin;
//            dbPosition.PayScaleLevelMax = position.PayScaleLevelMax;
//            dbPosition.PayScaleLevelMin = position.PayScaleLevelMin;
//            dbPosition.PlannedEndDate = position.PlannedEndDate;
//            dbPosition.PlannedStartDate = position.PlannedStartDate;
//            dbPosition.PlanningSalary = position.PlanningSalary;
//            dbPosition.PlanningSalaryBand = position.PlanningSalaryBand;
//            dbPosition.Title = position.Title;
//
////            if (!position.ManagingPositionId.HasValue || position.ManagingPositionId == 0) dbPosition.NullManagingPosition = true;
////            if (!position.CostCentreId.HasValue || position.CostCentreId == 0) dbPosition.NullCostCentre = true;
////            if (!position.EmployeeId.HasValue || position.EmployeeId == 0) dbPosition.NullEmployee = true;
////            if (!position.EmploymentTypeId.HasValue || position.EmploymentTypeId == 0) dbPosition.NullEmploymentType = true;
////            if (!position.FlowToCostCentreId.HasValue || position.FlowToCostCentreId == 0) dbPosition.NullFlowToCostCentre = true;
////            if (!position.HomeCostCentreId.HasValue || position.HomeCostCentreId == 0) dbPosition.NullHomeCostCentre = true;
////            if (!position.GoaId.HasValue || position.GoaId == 0) dbPosition.NullGoa = true;
////            if (!position.JobFamilyId.HasValue || position.JobFamilyId == 0) dbPosition.NullJobFamily = true;
////            if (!position.JobId.HasValue || position.JobId == 0) dbPosition.NullJob = true;
////            if (!position.LocationId.HasValue || position.LocationId == 0) dbPosition.NullLocation = true;
////            if (!position.WorkLocationId.HasValue || position.WorkLocationId == 0) dbPosition.NullWorkLocation = true;
////            if (!position.WorkScheduleId.HasValue || position.WorkScheduleId == 0) dbPosition.NullWorkSchedule = true;
////            if (!position.PayScaleTypeId.HasValue || position.PayScaleTypeId == 0) dbPosition.NullPayScaleType = true;
////            if (!position.PersonnelSubAreaId.HasValue || position.PersonnelSubAreaId == 0) dbPosition.NullPersonnelSubArea = true;
////            if (!position.SubGroupId.HasValue || position.SubGroupId == 0) dbPosition.NullSubGroup = true;
//        }
        

        public OperationResult SaveAll(PositionDataSet dataset)
        {
            var overallResult = new OperationResult();

            foreach (var position in dataset.Positions)
            {
                position.PositionDataSetId = dataset.Id;
                position.ClearObjects();
                var result = Save(position);

                if (!result.IsSuccess) overallResult.InvalidateAndAddMessage(result.Message);
            }

            return overallResult;
        }


//        public OperationResult UpdateRelationships()
//        {
//            var overallResult = new OperationResult();
//            var positionList = GetAll();
//
//            foreach (var position in positionList)
//            {
//                if(string.IsNullOrEmpty(position.ManagingPositionNumber)) continue;
//
//                var managingPosition = positionList.FirstOrDefault(i => i.Number == position.ManagingPositionNumber);
//                if (managingPosition == null)
//                {
//                    overallResult.InvalidateAndAddMessage($"Error Saving Position {position.Number}. {ErrorMessages.ManagingPositionNotFound}");
//                    continue;
//                }
//
//                position.ManagingPositionId = managingPosition.Id;
//                var result = Save(position);
//                if(!result.IsSuccess) overallResult.InvalidateAndAddMessage($"Error Saving Position. {result.Message}");
//
//            }
//
//            return overallResult;
//        }

        public OperationResult UpdatePositionReferences()
        {
            var overallResult = new OperationResult();
            var employeeList = Context.Set<Employee>();
            var positionList = GetAll();

            foreach (var position in positionList)
            {
                if (string.IsNullOrEmpty(position.EmployeeNumber)) continue;

                var employeeHeldBy = employeeList.FirstOrDefault(i => i.Number == position.EmployeeNumber);
                if (employeeHeldBy == null)
                {
                    overallResult.InvalidateAndAddMessage($"Error Saving Position {position.Number}. {ErrorMessages.AssignedEmployeeNotFound}");
                    continue;
                }

                var result = Save(position);
                if (!result.IsSuccess) overallResult.InvalidateAndAddMessage($"Error Saving Position. {result.Message}");

            }

            return overallResult;

        }

        public OperationResult ArchiveCurrent()
        {
            try
            {
                var positions = GetAll();

                foreach (var position in positions)
                {
                    Context.PositionHistories.Add(new PositionHistory(position) {CreatedBy = "System", CreatedDate = DateTime.Now, ModifiedBy = "System", ModifiedDate = DateTime.Now});
                }

                Context.SaveChanges();

                Context.Database.ExecuteSqlCommand("DELETE FROM Position");

                return new OperationResult() {IsSuccess = true};
            }
            catch (Exception e)
            {
                return new OperationResult() {IsSuccess = false, Message = "Error archiving existing dataset. Error Details: " + e.Message};
            }

        }
    }

    public interface IPositionRepository : IRepository<Position>
    {
        OperationResult Save(Position position);
        Position Get(string number);
    }
}
