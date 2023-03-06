using System.Collections.Generic;
using src.Models;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.Entities;

namespace WorkforcePlanning.Core.Views.Models
{
    public class FileUploadViewModel : ViewModelBase
    {
        public List<PositionDataSet> DataSet { get; set; }
    }
}