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
        public ActionResult Edit(Dyeing dyeing)
        {
            Boolean Result = false;
            try
            {
                if (dyeing.Id > 0)
                {
                    int Id = DyeingBLL.EditDyeing(dyeing);
                    if (Id > 0)
                    {
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
        public ActionResult Approve(Dyeing dyeing)
        {
            Boolean Result = false;
            try
            {
                if (dyeing.Id > 0)
                {
                    int Id = DyeingBLL.ApproveDyeing(dyeing);
                    if (Id > 0)
                    {
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
        public ActionResult Revise(Dyeing dyeing)
        {
            Boolean Result = false;
            try
            {
                if (dyeing.Id > 0)
                {
                    int Id = DyeingBLL.ReviseDyeing(dyeing);
                    if (Id > 0)
                    {
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

        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = DyeingBLL.DeleteDyeing(Id);
                }

                if (Result)
                {
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }

            return Json("Failed", JsonRequestBehavior.AllowGet);
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

        public ActionResult BarCodeAuthorization(int BarCode)
        {
            Boolean Result = false;
            try
            {
                if (BarCode > 0)
                {
                    Result = DyeingBLL.BarCodeAuthorization(BarCode);
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

        [HttpGet]
        public JsonResult GetDyeingUnitList()
        {
            JsonResult result = new JsonResult();
            List<DyeingUnitType> dyeings = new List<DyeingUnitType>();

            try
            {
                dyeings = DyeingBLL.GetDyeingUnitList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = dyeings }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddDyeingUnit(DyeingUnitType dyeing)
        {
            Boolean Result = false;
            try
            {
                int Id = DyeingBLL.AddDyeingUnit(dyeing);
                if (Id > 0)
                {
                    dyeing.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
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
        public ActionResult DeleteDyeingUnit(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = DyeingBLL.DeleteDyeingUnit(Id);
                }

                if (Result)
                {
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }

            return Json("Failed", JsonRequestBehavior.AllowGet);
        }

    }
}
