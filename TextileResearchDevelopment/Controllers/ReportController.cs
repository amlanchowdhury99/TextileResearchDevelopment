using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.BLL;
using TextileResearchDevelopment.Models;

namespace TextileResearchDevelopment.Controllers
{
    public class ReportController : Controller
    {
        // GET: Report
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GetSearchResult(TestReport searchObj)
        {
            List<TestReport> data = new List<TestReport>();
            try
            {
                data = ReportBLL.Search(searchObj);
            }
            catch (Exception ex)
            {
                data = new List<TestReport>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult BarCodeAuthorization(int BarCode)
        {
            Boolean Result = false;
            try
            {
                if (BarCode > 0)
                {
                    Result = ReportBLL.BarCodeAuthorization(BarCode);
                }
                if (BarCode == 0)
                {
                    Result = true;
                }

                if (Result)
                {
                    return Json("true", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }

            return Json("false", JsonRequestBehavior.AllowGet);
        }

    }
}
