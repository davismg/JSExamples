namespace WorkforcePlanning.Core.Data.Domain.ValueObjects
{
    public abstract class ResultBase
    {
        public bool IsSuccess { get; set; }
        public string Message { get; set; }
    }
}