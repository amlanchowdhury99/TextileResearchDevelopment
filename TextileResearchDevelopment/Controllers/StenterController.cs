using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class StenterController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetData()
        {
            JsonResult result = new JsonResult();
            List<Stenter> data = new List<Stenter>();

            try
            {
                data = StenterBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = data }, JsonRequestBehavior.AllowGet);

        }

        [HttpGet]
        public JsonResult GetSoftenerUnit()
        {
            JsonResult result = new JsonResult();
            List<SoftenerType> SoftenerTypes = new List<SoftenerType>();

            try
            {
                SoftenerTypes = StenterBLL.GetSoftenerUnit();
            }
            catch (Exception ex)
            {
                SoftenerTypes = new List<SoftenerType>();
            }

            return Json(SoftenerTypes, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create(Stenter stenter)
        {
            Boolean Result = false;
            try
            {
                if (stenter.Id == 0)
                {
                    int Id = StenterBLL.AddStenter(stenter);
                    if (Id > 0)
                    {
                        stenter.Id = Id;
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Edit(Stenter stenter)
        {
            Boolean Result = false;
            try
            {
                if (stenter.Id > 0)
                {
                    int Id = StenterBLL.EditStenter(stenter);
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
                    return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Approve(Stenter stenter)
        {
            Boolean Result = false;
            try
            {
                if (stenter.Id > 0)
                {
                    int Id = StenterBLL.ApproveStenter(stenter);
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
                    return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Revise(Stenter stenter)
        {
            Boolean Result = false;
            try
            {
                if (stenter.Id > 0)
                {
                    int Id = StenterBLL.ReviseStenter(stenter);
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
                    return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = StenterBLL.DeleteStenter(Id);
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

        [HttpPost]
        public JsonResult DyeingSearch(Dyeing dyeingSearchObj)
        {

            List<Dyeing> data = new List<Dyeing>();
            try
            {
                data = StenterBLL.DyeingSearch(dyeingSearchObj);
            }
            catch (Exception ex)
            {
                data = new List<Dyeing>();
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
                    Result = StenterBLL.BarCodeAuthorization(BarCode);
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

        [HttpPost]
        public ActionResult AddSoftenerType(SoftenerType softenerType)
        {
            Boolean Result = false;
            try
            {
                int Id = StenterBLL.AddSoftenerType(softenerType);
                if (Id > 0)
                {
                    softenerType.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
                }

                if (Result)
                {
                    return Json(new { data = softenerType }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeletePrintType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = StenterBLL.DeleteSoftenerType(Id);
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
