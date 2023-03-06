using WorkforcePlanning.Core.Data.Domain.ValueObjects;

namespace src.Models
{
    public class ViewModelBase
    {
        private OperationResult _viewResult;

        public OperationResult ViewResult
        {
            get { return _viewResult ?? (_viewResult = new OperationResult()); }
            set { _viewResult = value; }
        }

        public string PageTitle { get; set; }
    }
}