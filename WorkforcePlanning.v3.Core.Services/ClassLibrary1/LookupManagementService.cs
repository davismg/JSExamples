using System;
using System.Linq;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.Constants;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;
using WorkforcePlanning.Core.Data.Repository;
using WorkforcePlanning.Core.Services.Interface;


namespace WorkforcePlanning.Core.Services
{
    public class LookupManagementService : ILookupManagementService
    {
        private IRepository<CostCentre> CostCentreRepository { get; set; }
        private IRepository<Goa> GoaRepository { get; set; }
        private IRepository<JobFamily> JobFamilyRepository { get; set; }
        private IRepository<Job> JobRepository { get; set; }
        private IRepository<Location> LocationRepository { get; set; }
        private IRepository<LocationType> LocationTypeRepository { get; set; }
        private IRepository<WorkSchedule> WorkScheduleRepository { get; set; }
        private IRepository<PayScaleType> PayScaleTypeRepository { get; set; }
        private IRepository<PersonnelSubArea> PersonnelSubAreaRepository { get; set; }
        private IRepository<SubGroup> SubGroupRepository { get; set; }
        private IRepository<EmploymentType> EmploymentTypeRepository { get; set; }

        public LookupManagementService()
        {
            CostCentreRepository = new RepositoryBase<CostCentre>();
            GoaRepository = new RepositoryBase<Goa>();
            JobFamilyRepository = new RepositoryBase<JobFamily>();
            JobRepository = new RepositoryBase<Job>();
            LocationRepository = new RepositoryBase<Location>();
            WorkScheduleRepository = new RepositoryBase<WorkSchedule>();
            PayScaleTypeRepository = new RepositoryBase<PayScaleType>();
            PersonnelSubAreaRepository = new RepositoryBase<PersonnelSubArea>();
            SubGroupRepository = new RepositoryBase<SubGroup>();
            EmploymentTypeRepository = new RepositoryBase<EmploymentType>();
        }

        public OperationResult VerifyAndUpdate(CostCentre item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (CostCentreRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult {IsSuccess = true, Message = SystemMessages.LookupValueExists};
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return CostCentreRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(Goa item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (GoaRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return GoaRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(JobFamily item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (JobFamilyRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return JobFamilyRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(Job item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (JobRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return JobRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(Location item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (LocationRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return LocationRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(WorkSchedule item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (WorkScheduleRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return WorkScheduleRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(PayScaleType item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (PayScaleTypeRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return PayScaleTypeRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(PersonnelSubArea item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (PersonnelSubAreaRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return PersonnelSubAreaRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(SubGroup item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (SubGroupRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return SubGroupRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(EmploymentType item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (EmploymentTypeRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return EmploymentTypeRepository.Save(item);
        }

        public OperationResult VerifyAndUpdate(LocationType item)
        {
            if (item == null) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (string.IsNullOrEmpty(item.Name)) return new OperationResult { IsSuccess = true, Message = SystemMessages.NoUpdateRequiredNullObjectProvided };
            if (EmploymentTypeRepository.GetWhere(i => i.Id == item.Id).Any()) return new OperationResult { IsSuccess = true, Message = SystemMessages.LookupValueExists };
            item.CreatedDate = DateTime.Now;
            item.ModifiedDate = DateTime.Now;
            item.EffectiveFromDate = DateTime.Now;
            item.CreatedBy = "System";
            item.ModifiedBy = "System";
            return LocationTypeRepository.Save(item);
        }

        public int? GetIdFor(EmploymentType item)
        {
            if (string.IsNullOrEmpty(item?.Name)) return null;

            return EmploymentTypeRepository.GetWhere(i =>i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(SubGroup item)
        {
            if (string.IsNullOrEmpty(item?.Name)) return null;

            return SubGroupRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(PersonnelSubArea item)
        {
            if (string.IsNullOrEmpty(item?.Name)) return null;

            return PersonnelSubAreaRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(PayScaleType item)
        {
            if (string.IsNullOrEmpty(item?.Name)) return null;

            return PayScaleTypeRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(WorkSchedule item)
        {
            if (string.IsNullOrEmpty(item?.Name)) return null;

            return WorkScheduleRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(JobFamily item)
        {
            if (string.IsNullOrEmpty(item?.Number)) return null;

            return JobFamilyRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(Job item)
        {
            if (string.IsNullOrEmpty(item?.Number)) return null;

            return JobRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(Goa item)
        {
            if (string.IsNullOrEmpty(item?.Number)) return null;

            return GoaRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(CostCentre item)
        {
            if (string.IsNullOrEmpty(item?.Number)) return null;
            return CostCentreRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }

        public int? GetIdFor(Location item)
        {
            if (string.IsNullOrEmpty(item?.Name)) return null;

            return LocationRepository.GetWhere(i => i.Name == item.Name).First().Id;
        }
    }
}