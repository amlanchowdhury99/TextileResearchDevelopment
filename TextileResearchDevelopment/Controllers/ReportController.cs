﻿using System;
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
            List<Stenter> data = new List<Stenter>();
            try
            {
                data = ReportBLL.Search(searchObj);
            }
            catch (Exception ex)
            {
                data = new List<Stenter>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

    }
}