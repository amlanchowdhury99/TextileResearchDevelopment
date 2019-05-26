using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class DyeingController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Details(int id)
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetDyeingUnit()
        {
            JsonResult result = new JsonResult();
            List<DyeingUnitType> DyeingUnitTypes = new List<DyeingUnitType>();

            try
            {
                DyeingUnitTypes = DyeingBLL.GetDyeingUnit();
            }
            catch (Exception ex)
            {
                DyeingUnitTypes = new List<DyeingUnitType>();
            }

            return Json(DyeingUnitTypes, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create(Dyeing dyeing)
        {
            Boolean Result = false;
            try
            {
                if (dyeing.Id == 0)
                {
                    int Id = DyeingBLL.AddDyeing(dyeing);
                    if (Id > 0)
                    {
                        dyeing.Id = Id;
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = dyeing }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult Delete(int id)
        {
            return View();
        }

        public JsonResult KnitSearch(Knitting knitSearchObj)
        {

            List<Knitting> data = new List<Knitting>();
            try
            {
                data = DyeingBLL.KnitSearch(knitSearchObj);
            }
            catch (Exception ex)
            {
                data = new List<Knitting>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetData()
        {
            JsonResult result = new JsonResult();
            List<Dyeing> data = new List<Dyeing>();

            try
            {
                data = DyeingBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = data }, JsonRequestBehavior.AllowGet);

        }
    }
}
