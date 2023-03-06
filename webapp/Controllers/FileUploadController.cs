using System;
using System.IO;
using System.Web;
using System.Web.Mvc;
using src.Models;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Services;
using WorkforcePlanning.Core.Views.Models;
using WorkforcePlanning.Core.Views.ViewServices;

namespace WorkforcePlanning.Core.Views.Controllers
{
    public class FileUploadController : Controller
    {
        private FileUploadViewService Service { get; set; }
        private WorkforceDataFileMappingService MappingService { get; set; }
        private DataSetService DataSetService { get; set; } 

        public FileUploadController(): this(new FileUploadViewService(), new WorkforceDataFileMappingService(), new DataSetService())
        {
        }

        public FileUploadController(FileUploadViewService service, WorkforceDataFileMappingService mappingService, DataSetService dataSetService)
        {
            Service = service;
            MappingService = mappingService;
            DataSetService = dataSetService;
        }

        // GET: FileUpload
        public ActionResult Scheduled()
        {
            var model = new ViewModelBase() {PageTitle = "File Upload Managment"};
            return View(model);
        }

        public ActionResult Manual()
        {
            var model = new ViewModelBase() { PageTitle = "File Upload Managment" };
            return View(model);
        }

        public ActionResult History()
        {
            var model = new FileUploadViewModel { PageTitle = "File Upload Managment" };

            model.DataSet = DataSetService.GetAll();
            
            return View(model);
        }

        [HttpPost]
        public ActionResult UploadFile(HttpPostedFileBase file, string txtAsOfDate, int dataSetId = 0)
        {
            var model = new ViewModelBase() { PageTitle = "File Upload Managment" };
            var result = Service.PreValidateFile(file, txtAsOfDate);
            if (!result.IsSuccess)
            {
                model.ViewResult = result;
                return View("Manual", model);
            }

            var fileName = Path.GetFileName(file.FileName);
            var path = Path.Combine(Server.MapPath("~/uploads"), fileName);

            try
            {
                file.SaveAs(path);
                MappingService.DataSourceFileConfigurationId = 1;
                MappingService.InitializeAndLoad(path, 1);
                var dataSet = new PositionDataSet()
                {
                    Positions =  MappingService.Positions,
                    AsOfDate = DateTime.Parse(txtAsOfDate),
                    Id = dataSetId
                };

                //save the dataset
                DataSetService.Save(dataSet);

                if(DataSetService.Result.IsSuccess) model.ViewResult.SetSuccessAndAddMessage("Dataset onboarded successfully");
                model.ViewResult.InvalidateAndAddMessage($"{result.Message}");


            }
            catch (Exception e)
            {
                model.ViewResult.InvalidateAndAddMessage($"An unexpected error has occured. <br>{e.Message}");
                return View("Manual", model);
            }

            model.ViewResult.SetSuccessAndAddMessage("File Uploaded Successfully.");
            return View("Manual", model);
            
        }
    }
}