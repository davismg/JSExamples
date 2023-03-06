using System;

namespace WorkforcePlanning.Core.Data.Domain.ValueObjects
{
    public class OperationResult : ResultBase
    {
        public int? ObjectId { get; set; }

        public OperationResult()
        {
            IsSuccess = true;
        }

        public void InvalidateAndAddMessage(string message)
        {
            IsSuccess = false;
            Message += message + Environment.NewLine;
        }

        public void SetSuccessAndAddMessage(string message)
        {
            IsSuccess = true;
            Message += message + Environment.NewLine;
        }
    }
}