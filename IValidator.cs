using System.Collections.Generic;
using TransCanada.Framework.Common.Validation;
using TransCanada.Framework.Microservice.Domain.Persistence;

namespace TransCanada.Framework.Microservice.Domain.Validation
{
    public interface IValidator<TEntity, TRepository> where TRepository : IRepository
    {
        IEnumerable<ValidationResult> Validate(TEntity entity, TRepository repository, string ruleSet = null);
    }
}