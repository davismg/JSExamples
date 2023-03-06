using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using WorkforcePlanning.Core.Data.Domain.Constants;
using WorkforcePlanning.Core.Data.Domain.Entities.BaseTypes;
using ValidationResult = WorkforcePlanning.Core.Data.Domain.ValueObjects.ValidationResult;

namespace WorkforcePlanning.Core.Data
{
    public partial class DataSourceFileConfiguration : ModelBase
    {
        public string SourceFileLocation => Path.Combine(DataLoadLocation, SourceFileName);

        public ValidationResult IsConfigurationValid()
        {
            var result = new ValidationResult();

            if (string.IsNullOrEmpty(DataLoadLocation)) result.AddMessage(ErrorMessages.DataLoadLocationCanNotBeEmpty);
            if (string.IsNullOrEmpty(SourceFileName))result.AddMessage(ErrorMessages.SourceFileNameCanNotBeEmpty);

            result.IsSuccess = string.IsNullOrEmpty(result.Message);

            return result;
        }


        public int GetColumnIndexFor(string fieldName)
        {
            if (!IsMapped(fieldName)) return -1;

            return SourceFileColumnMappings.First(x => string.Equals(x.FieldName, fieldName, StringComparison.CurrentCultureIgnoreCase)).ColumnIndex;
        }

        public bool IsMapped(string fieldName)
        {
            return SourceFileColumnMappings.Any(x => string.Equals(x.FieldName, fieldName, StringComparison.CurrentCultureIgnoreCase));
        }
    }
}