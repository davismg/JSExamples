using System.Linq;
using FluentValidation;
using TransCanada.Framework.Common.Domain;
using TransCanada.GCTS.FlowingGasService.Domain;
using TransCanada.GCTS.FlowingGasService.Repositories;
using TransCanada.GCTS.FlowingGasService.Services;

namespace TransCanada.GCTS.FlowingGasService.Validators
{
    public class GasAccountBaseValidator<TGasAccount> : AbstractValidator<TGasAccount> where TGasAccount : GasAccount
    {
        public GasAccountBaseValidator(IGasAccountRepository gasAccountRepository)
        {
            //RuleForEach(x => x.Children)
            //    .Must((parent, relationship) => gasAccountRepository.FindParent(relationship.ChildGasAccount) == null)
            //    .WithMessage("Child Gas Account '{0}' is already a child of {1}.");
        }
    }

    public class GasAccountValidator : GasAccountBaseValidator<GasAccount>
    {
        public GasAccountValidator(IGasAccountRepository gasAccountRepository) : base(gasAccountRepository)
        {
            
        }
    }

    public class OperatorGasAccountBaseValidator : GasAccountBaseValidator<OperatorGasAccount>
    {
        public OperatorGasAccountBaseValidator(IGasAccountRepository gasAccountRepository, ICommonDataServiceProxy commonDataServiceProxy) : base(gasAccountRepository)
        {
            RuleFor(x => x.Location)
                .Must((ga, l) => commonDataServiceProxy.GetAllLocations(ga.PipelineSystemCid, GasDay.Today).Any(x => x.Id == l.Id))
                .WithMessage("Location '{0}' was not found.", (ga,l) => l.Id);
        }
    }
}