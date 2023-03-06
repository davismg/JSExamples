using System;

namespace WorkforcePlanning.Core.Data.Domain.ValueObjects
{
    public class ValidationResult : ResultBase
    {
        public void AddMessage(string message)
        {
            Message += message + Environment.NewLine;
        }
    }
}