using System.Linq;
using System.Web;
using src.ViewServices;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;

namespace WorkforcePlanning.Core.Views.ViewServices
{
    
    public class FileUploadViewService
    {
        public OperationResult PreValidateFile(HttpPostedFileBase file, string asOfDate)
        {
            var result = new OperationResult { IsSuccess = true };
            if (string.IsNullOrEmpty(asOfDate)) result.InvalidateAndAddMessage("The provided as of date has not been supplied.");
            if (file == null)
            {
                result.InvalidateAndAddMessage("No file provided.");
                return result;
            }


            if (file.ContentLength <= 0) result.InvalidateAndAddMessage("The uploaded file is empty.");

            var ext = file.FileName.Split('.').Last();
            //TODO: Add a check to see if data already exists for this as of date

            
            if (ext.Length == 0) result.InvalidateAndAddMessage("No extention included on the uploaded file.");
            if (!ConfigurationService.AllowedExtensions.Split(',').Contains(ext)) result.InvalidateAndAddMessage($"An invalid file type was uploaded. Valid file types include {ConfigurationService.AllowedExtensions}.");

            return result;
        }

    }
}