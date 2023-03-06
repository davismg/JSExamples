using System;
using System.Web.Mvc;
using src.Models;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Views.ViewServices;

namespace WorkforcePlanning.Core.Views.Controllers
{
    public class HomeController : Controller
    {
        private PositionViewService Service { get; }

        public HomeController() : this(new PositionViewService())
        {
        }

        public HomeController(PositionViewService service)
        {
            Service = service;
        }

        public ActionResult Index()
        {
            var model = new ViewModelBase() {PageTitle = "Welcome"};
            return View(model);
        }

        public ActionResult EndUser()
        {
            var model = new ViewModelBase() { PageTitle = "Welcome" };
            return View(model);
        }

        public ActionResult Positions(DateTime? asOfDate)
        {

            var model = Service.LoadPositions(asOfDate ?? DateTime.Now);
            model.PageTitle = "Postions";
            return View(model);
        }

        public ActionResult HeldBy(string number)
        {
            var model = Service.LoadPostion(number);
            
            return PartialView(model);
        }

        public ActionResult Position(string number)
        {
            var model = Service.LoadPostion(number);

            model.PageTitle = "Position Management";
            
            return View(model);
        }

        public ActionResult Edit(string number)
        {
            var model = Service.LoadPostion(number);

            model.PageTitle = "Edit Position";

            return View(model);
        }

        public ActionResult Save(PositionRevision position)
        {
            var result = Service.SaveRevision(position);

            if (!result.IsSuccess)
            {
                var model = new PositionViewModel { PageTitle = "Position Details" };

                var dbPosition = Service.LoadPostion(position.Number);

//                dbPosition.ApplyRevisions(position);

//                Service.Save(position);

                model.ViewResult = result;
                return View("Edit", model);
            }

            var savedModel = Service.LoadPostion(position.Number);
            savedModel.ViewResult = result;

            return View("Edit", savedModel);
        }

        public ActionResult Initialize()
        {
//            Service.Save();

            return View();
        }

        public JsonResult Search(string q)
        {
            var items = Service.Search(q);
            
            return Json(new { search_results = items }, JsonRequestBehavior.AllowGet);
        }
    }
}