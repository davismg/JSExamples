using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;
using WorkforcePlanning.Core.Data.Repository;

namespace WorkforcePlanning.Core.Views.Controllers
{
    public class CostCentreController : Controller
    {
        private IRepository<CostCentre> Repository { get; set; }
        public CostCentreController(): this(new RepositoryBase<CostCentre>())
        {
        }

        public CostCentreController(IRepository<CostCentre> repository)
        {
            Repository = repository;
        }

        public JsonResult Search(string q)
        {
            var items = Repository.GetWhere(i => i.Name.Contains(q) || i.Number.Contains(q));
            var list = new List<LookupItem>(items.Select(i => new LookupItem { Key = i.Id.ToString(), Value = $"{i.Number}-{i.Name}" }));

            return Json(new { search_results = list }, JsonRequestBehavior.AllowGet);
        }
    }
}