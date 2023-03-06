using System;
using System.Collections.Generic;
using System.IO;
using OfficeOpenXml;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.Constants;
using WorkforcePlanning.Core.Data.Repository;


namespace WorkforcePlanning.Core.Services
{
    public class WorkforceDataFileMappingService
    {
      
        private  DataSourceFileConfigurationRepository Repository { get; set; }
        public int DataSourceFileConfigurationId { get; set; }
        public DataSourceFileConfiguration Configuration { get; set; }


        private byte[] _content;
        private List<Position> _positions;

        public List<Position> Positions
        {
            get { return _positions ?? (_positions = new List<Position>()); }
            set { _positions = value; }
        }

        public WorkforceDataFileMappingService() : this(new DataSourceFileConfigurationRepository())
        {
        }

        public WorkforceDataFileMappingService(DataSourceFileConfigurationRepository repository)
        {
            //get the datasource from the repo
            Repository = repository;

            //assign the configuration details to the _datasourceConfiguation Propery
        }

        public void InitializeAndLoad()
        {
            if (!File.Exists(Configuration.SourceFileLocation)) { throw new ApplicationException(ErrorMessages.SourceDataFileNotFound);}

            _content = File.ReadAllBytes(Configuration.SourceFileLocation);

            loadDataFromFile();
        }

        public void InitializeAndLoad(string fileName, int dataConfigurationId)
        {
            if (!File.Exists(fileName)) { throw new ApplicationException(ErrorMessages.SourceDataFileNotFound); }

            _content = File.ReadAllBytes(fileName);
            Configuration = Repository.Get(DataSourceFileConfigurationId); 


            loadDataFromFile();
        }

        private void loadDataFromFile()
        {
            using (var stream = new MemoryStream(_content))
            {
                using (var excel = new ExcelPackage(stream))
                {
                    if (excel.Workbook.Worksheets.Count <= 0) throw new ApplicationException(ErrorMessages.SourceDataFileEmpty);

                    foreach (var sheet in excel.Workbook.Worksheets)
                    {
                        for (var i = 1; i <= sheet.Dimension.End.Row; i++)
                        {
                            if (Configuration.FirstRowHasColumnNames && i == 1) continue;

                            var position = new Position();
                            position.Initialize();
                            position.Employee.Initialize();

                            //TODO: need to do an initial pass and validate each data field for a type and length. 
                            //This will exclude the record in an exception file if the record is excluded. 

                            //Employee Fields
                            if(shouldRead(FieldNames.BirthDate, sheet, i)) position.Employee.BirthDate = Convert.ToDateTime(getCellValue(FieldNames.BirthDate, sheet, i));
                            if(shouldRead(FieldNames.FirstName, sheet, i)) position.Employee.FirstName = getCellValue(FieldNames.FirstName, sheet, i);
                            if(shouldRead(FieldNames.FirstWorkingDate, sheet, i)) position.Employee.FirstWorkingDate = Convert.ToDateTime(getCellValue(FieldNames.FirstWorkingDate, sheet, i));
                            if(shouldRead(FieldNames.Gender, sheet, i)) position.Employee.Gender = getCellValue(FieldNames.Gender, sheet, i);
                            if(shouldRead(FieldNames.LastName, sheet, i)) position.Employee.LastName = getCellValue(FieldNames.LastName, sheet, i);
                            if(shouldRead(FieldNames.EmployeeNumber, sheet, i)) position.Employee.Number = getCellValue(FieldNames.EmployeeNumber, sheet, i);
                            if(shouldRead(FieldNames.EmploymentType, sheet, i)) position.Employee.EmploymentType.Name = getCellValue(FieldNames.EmploymentType, sheet, i);
                            if(shouldRead(FieldNames.SubGroup, sheet, i)) position.Employee.SubGroup.Name = getCellValue(FieldNames.SubGroup, sheet, i);




                            if (shouldRead(FieldNames.ProposedEndDate, sheet, i) && !string.IsNullOrEmpty(getCellValue(FieldNames.ProposedEndDate, sheet, i)))
                                position.Employee.ProposedEndDate = Convert.ToDateTime(getCellValue(FieldNames.ProposedEndDate, sheet, i));
                            if(shouldRead(FieldNames.ProposedStartDate, sheet, i)) position.Employee.ProposedStartDate = Convert.ToDateTime(getCellValue(FieldNames.ProposedStartDate, sheet, i));
                            if(shouldRead(FieldNames.StartDate, sheet, i)) position.Employee.StartDate = Convert.ToDateTime(getCellValue(FieldNames.StartDate, sheet, i));

                            //cost center fields
                            if (shouldRead(FieldNames.CostCentreName, sheet, i)) position.CostCentre.Name = getCellValue(FieldNames.CostCentreName, sheet, i);
                            if (shouldRead(FieldNames.CostCentreNumber, sheet, i)) position.CostCentre.Number = getCellValue(FieldNames.CostCentreNumber, sheet, i);
                            if (shouldRead(FieldNames.HomeCostCentreName, sheet, i)) position.HomeCostCentre.Name = getCellValue(FieldNames.HomeCostCentreName, sheet, i);
                            if (shouldRead(FieldNames.HomeCostCentreNumber, sheet, i)) position.HomeCostCentre.Number = getCellValue(FieldNames.HomeCostCentreNumber, sheet, i);
                            if (shouldRead(FieldNames.FlowToCostCentreName, sheet, i)) position.FlowToCostCentre.Name = getCellValue(FieldNames.FlowToCostCentreName, sheet, i);
                            if (shouldRead(FieldNames.FlowToCostCentreNumber, sheet, i)) position.FlowToCostCentre.Number = getCellValue(FieldNames.FlowToCostCentreNumber, sheet, i);

                            //goa fields
                            if (shouldRead(FieldNames.GoaName, sheet, i)) position.Goa.Name = getCellValue(FieldNames.GoaName, sheet, i);
                            if (shouldRead(FieldNames.GoaNumber, sheet, i)) position.Goa.Number = getCellValue(FieldNames.GoaNumber, sheet, i);

                            //job fields
                            if (shouldRead(FieldNames.JobName, sheet, i)) position.Job.Name = getCellValue(FieldNames.JobName, sheet, i);
                            if (shouldRead(FieldNames.JobNumber, sheet, i)) position.Job.Number = getCellValue(FieldNames.JobNumber, sheet, i);

                            //job family fields
                            if (shouldRead(FieldNames.JobFamilyName, sheet, i)) position.JobFamily.Name = getCellValue(FieldNames.JobFamilyName, sheet, i);
                            if (shouldRead(FieldNames.JobFamilyNumber, sheet, i)) position.JobFamily.Number = getCellValue(FieldNames.JobFamilyNumber, sheet, i);

                            //Location fields
                            if (shouldRead(FieldNames.LocationName, sheet, i)) position.Location.Name = getCellValue(FieldNames.LocationName, sheet, i);
                            if (shouldRead(FieldNames.LocationBuilding, sheet, i)) position.Location.Building = getCellValue(FieldNames.LocationBuilding, sheet, i);

                            //Work Location fields
                            if (shouldRead(FieldNames.WorkLocationName, sheet, i)) position.WorkLocation.Name = getCellValue(FieldNames.WorkLocationName, sheet, i);
                            if (shouldRead(FieldNames.WorkLocationBuilding, sheet, i)) position.WorkLocation.Building = getCellValue(FieldNames.WorkLocationBuilding, sheet, i);


                            //Position Details
                            if (shouldRead(FieldNames.EmploymentPercentage, sheet, i)) position.EmploymentPercentage = Convert.ToDecimal(getCellValue(FieldNames.EmploymentPercentage, sheet, i));
                            if (shouldRead(FieldNames.EmploymentType, sheet, i)) position.EmploymentType.Name = getCellValue(FieldNames.EmploymentType, sheet, i);
                            if (shouldRead(FieldNames.DoesCountAsHeadCount, sheet, i)) position.DoesCountAsHeadCount = getCellValue(FieldNames.DoesCountAsHeadCount, sheet, i) == "Y";
                            if (shouldRead(FieldNames.FullTimeEquivalencyPercentage, sheet, i)) position.FullTimeEquivalencyPercentage = Convert.ToDecimal(getCellValue(FieldNames.FullTimeEquivalencyPercentage, sheet, i));
                            if (shouldRead(FieldNames.HardToRecruit, sheet, i)) position.HardToRecruit = getCellValue(FieldNames.HardToRecruit, sheet, i) == "Y";
                            if (shouldRead(FieldNames.IsCriticalSkill, sheet, i)) position.IsCriticalSkill = getCellValue(FieldNames.IsCriticalSkill, sheet, i) == "Y";
                            if (shouldRead(FieldNames.Number, sheet, i)) position.Number = getCellValue(FieldNames.Number, sheet, i);
                            if (shouldRead(FieldNames.OvertimeExempt, sheet, i)) position.OvertimeExempt = getCellValue(FieldNames.OvertimeExempt, sheet, i) == "Y";
                            if (shouldRead(FieldNames.PayScaleGroupMax, sheet, i)) position.PayScaleGroupMax = getCellValue(FieldNames.PayScaleGroupMax, sheet, i);
                            if (shouldRead(FieldNames.PayScaleGroupMin, sheet, i)) position.PayScaleGroupMin = getCellValue(FieldNames.PayScaleGroupMin, sheet, i);
                            if (shouldRead(FieldNames.PayScaleLevelMax, sheet, i)) position.PayScaleLevelMax = getCellValue(FieldNames.PayScaleLevelMax, sheet, i);
                            if (shouldRead(FieldNames.PayScaleLevelMin, sheet, i)) position.PayScaleLevelMin = getCellValue(FieldNames.PayScaleLevelMin, sheet, i);
                            if (shouldRead(FieldNames.PayScaleType, sheet, i)) position.PayScaleType.Name = getCellValue(FieldNames.PayScaleType, sheet, i);
                            if (shouldRead(FieldNames.PlannedEndDate, sheet, i)) position.PlannedEndDate = Convert.ToDateTime(getCellValue(FieldNames.PlannedEndDate, sheet, i));
                            if (shouldRead(FieldNames.PlannedStartDate, sheet, i)) position.PlannedStartDate = Convert.ToDateTime(getCellValue(FieldNames.PlannedStartDate, sheet, i));
                            if (shouldRead(FieldNames.PersonnelSubArea, sheet, i)) position.PersonnelSubArea.Name = getCellValue(FieldNames.PersonnelSubArea, sheet, i);
                            if (shouldRead(FieldNames.PlanningSalary, sheet, i)) position.PlanningSalary = Convert.ToDecimal(getCellValue(FieldNames.PlanningSalary, sheet, i));
                            if (shouldRead(FieldNames.PlanningSalaryBand, sheet, i)) position.PlanningSalaryBand = Convert.ToInt32(getCellValue(FieldNames.PlanningSalaryBand, sheet, i));
                            if (shouldRead(FieldNames.SubGroup, sheet, i)) position.SubGroup.Name = getCellValue(FieldNames.SubGroup, sheet, i);
                            if (shouldRead(FieldNames.Title, sheet, i)) position.Title = getCellValue(FieldNames.Title, sheet, i);
                            if (shouldRead(FieldNames.WorkSchedule, sheet, i)) position.WorkSchedule.Name = getCellValue(FieldNames.WorkSchedule, sheet, i);
                          
                            Positions.Add(position);
                        }
                    }
                }
            }
        }

        

        private bool shouldRead(string fieldName,ExcelWorksheet sheet, int rowIndex)
        {
            if (!Configuration.IsMapped(fieldName)) return false;
            return !string.IsNullOrEmpty(sheet.Cells[rowIndex, Configuration.GetColumnIndexFor(fieldName)].Text);
        }

        private string getCellValue(string fieldName, ExcelWorksheet sheet, int rowIndex)
        {
            return sheet.Cells[rowIndex, Configuration.GetColumnIndexFor(fieldName)].Text;
        }
    }
}