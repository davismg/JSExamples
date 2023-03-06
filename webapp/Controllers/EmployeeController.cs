using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;
using WorkforcePlanning.Core.Data.Repository;

namespace WorkforcePlanning.Core.Views.Controllers
{
    public class EmployeeController : Controller
    {
        private EmployeeRepository Repository { get; set; }
        public EmployeeController(): this(new EmployeeRepository())
        {
        }

        public EmployeeController(EmployeeRepository repository)
        {
            Repository = repository;
        }

        public JsonResult Search(string q)
        {
            var items = Repository.GetWhere(i => i.FirstName.Contains(q) || i.LastName.Contains(q));
            var list = new List<LookupItem>(items.Select(i => new LookupItem {Key = i.Number, Value = i.FullName}));

            return Json(new {search_results = list}, JsonRequestBehavior.AllowGet);
        }
    }
}