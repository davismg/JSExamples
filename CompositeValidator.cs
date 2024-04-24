using System;
using System.Collections.Generic;
using System.Linq;
using FluentValidation;
using FluentValidation.Results;

namespace TransCanada.GCTS.Shared.Validation
{
    /// <summary>
    /// Gives the ability to add other Validators to a Validator so that we can re-use Validators.
    /// </summary>
    /// <see cref="https://fluentvalidation.codeplex.com/discussions/241308"/>
    /// <typeparam name="T"></typeparam>
    public abstract class CompositeValidator<T> : AbstractValidator<T>
    {
        private readonly List<IValidator> otherValidators = new List<IValidator>();

        protected void RegisterBaseValidator<TBase>(IValidator<TBase> validator)
        {
            // Ensure that we've registered a compatible validator. 
            if (validator.CanValidateInstancesOfType(typeof(T)))
            {
                otherValidators.Add(validator);
            }
            else
            {
                throw new NotSupportedException(
                    $"Type {typeof(TBase).Name} is not a base-class or interface implemented by {typeof(T).Name}.");
            }

        }

        public bool Uses<TValidator>() where TValidator : IValidator
        {
            return otherValidators.Exists(v => v.GetType() == typeof (TValidator));
        }

        public override ValidationResult Validate(ValidationContext<T> context)
        {
            var mainErrors = base.Validate(context).Errors;
            var errorsFromOtherValidators = otherValidators.SelectMany(x => x.Validate(context).Errors);
            var combinedErrors = mainErrors.Concat(errorsFromOtherValidators);

            return new ValidationResult(combinedErrors);
        }
    }
}