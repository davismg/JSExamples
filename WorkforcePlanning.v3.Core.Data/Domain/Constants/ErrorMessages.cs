namespace WorkforcePlanning.Core.Data.Domain.Constants
{
    public static class ErrorMessages
    {
        public static readonly string SourceDataFileNotFound = "The source data file was not found. Please confirm the file was generated and try again.";
        public static readonly string DataLoadLocationCanNotBeEmpty = "The data load location property can not be empty";
        public static readonly string SourceFileNameCanNotBeEmpty= "Source file name can not be empty";
        public static string SourceDataFileEmpty = "The source data file was found but was empty. Please check the file and try again.";
        public static string ManagingPositionNotFound = "Managing position not found.";
        public static string AssignedEmployeeNotFound = "Assigned Employee not found.";
    }

    public static class SystemMessages
    {
        public static readonly string LookupValueExists = "Lookup Value Exists";
        public static readonly string CostCentreLookupValueAdded = "Cost Centre Lookup Value Added";
        public static readonly string JobLookupValueAdded = "Job Lookup Value Added";
        public static readonly string JobFamilyLookupValueAdded = "Job Family Lookup Value Added";
        public static readonly string EmploymentTypeLookupValueAdded = "Employment Type Lookup Value Added";
        public static readonly string GoaLookupValueAdded = "GOA Lookup Value Added";
        public static readonly string SubGroupValueAdded = "Subgroup Lookup Value Added";
        public static readonly string PersonnelSubGroupLookupValueAdded = "Personnel subgroup Lookup Value Added";
        public static readonly string PayscaleTypeLookupValueAdded = "Payscale type Lookup Value Added";
        public static readonly string NoUpdateRequiredNullObjectProvided = "No update required. Null object provided";
    }
}