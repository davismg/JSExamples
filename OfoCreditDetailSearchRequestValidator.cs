using FluentValidation;
using TransCanada.Framework.Common.Domain;
using TransCanada.GCTS.FlowingGasService.Models.Ofo;
using TransCanada.GCTS.Shared.Validation;
using TransCanada.GCTS.Shared.Validation.Request;

namespace TransCanada.GCTS.FlowingGasService.Validators.Ofo
{
    public class OfoCreditDetailSearchRequestValidator : CompositeValidator<OfoCreditDetailSearchRequest>
    {
        public OfoCreditDetailSearchRequestValidator()
        {
            RegisterBaseValidator(new PipelineRequestValidator());

            RuleFor(x => x.OfoOrderReferenceNumber)
                .InclusiveBetween(1, 999999)
                .WithMessage("OFO Order reference number must be between 1 and 999999 (inclusive)");

            RuleFor(x => x.BillingYear)
                .ExclusiveBetween(GasDay.StartOfTime.Year, GasDay.EndOfTime.Year)
                .WithMessage("Credit year must be a valid year.");
        }
    }
}