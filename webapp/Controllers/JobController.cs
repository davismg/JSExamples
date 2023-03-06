using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;
using WorkforcePlanning.Core.Data.Repository;

namespace WorkforcePlanning.Core.Views.Controllers
{
    public class JobController: Controller
    {
        private IRepository<Job> Repository { get; set; }
        public JobController(): this(new RepositoryBase<Job>())
        {
        }

        public JobController(IRepository<Job> repository)
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