using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;
using System.Web.Mvc;

namespace TextileResearchDevelopment.Controllers
{
    public class KnittingController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetData()
        {
            JsonResult result = new JsonResult();
            List<Knitting> data = new List<Knitting>();

            try
            {
                data = KnittingBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = data }, JsonRequestBehavior.AllowGet);

        }

        [HttpGet]
        public JsonResult GetMCDIAList()
        {
            JsonResult result = new JsonResult();
            List<McDiaGaugeType> McDiaGauges = new List<McDiaGaugeType>();

            try
            {
                McDiaGauges = KnittingBLL.GetMCDIAList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = McDiaGauges }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetYarnCountList()
        {
            JsonResult result = new JsonResult();
            List<YarnCountType> YarnCounts = new List<YarnCountType>();

            try
            {
                YarnCounts = KnittingBLL.GetYarnCountList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = YarnCounts }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetKnitUnitList()
        {
            JsonResult result = new JsonResult();
            List<KnitUnitType> KnitUnits = new List<KnitUnitType>();

            try
            {
                KnitUnits = KnittingBLL.GetKnitUnitList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = KnitUnits }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetMcBrandList()
        {
            JsonResult result = new JsonResult();
            List<McBrandType> McBrands = new List<McBrandType>();

            try
            {
                McBrands = KnittingBLL.GetMcBrandList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = McBrands }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult FabricSearch(Fabric fabricSearchObj)
        {

            List<Fabric> data = new List<Fabric>();
            try
            {
                data = KnittingBLL.FabricSearch(fabricSearchObj);
            }
            catch (Exception ex)
            {
                data = new List<Fabric>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create(Knitting knit)
        {
            Boolean Result = false;
            try
            {
                if (knit.Id == 0)
                {
                    int Id = KnittingBLL.AddKnit(knit);
                    if (Id > 0)
                    {
                        knit.Id = Id;
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Edit(Knitting knit)
        {
            Boolean Result = false;
            try
            {
                if (knit.Id > 0)
                {
                    int Id = KnittingBLL.EditKnit(knit);
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
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Approve(Knitting knit)
        {
            Boolean Result = false;
            try
            {
                if (knit.Id > 0)
                {
                    int Id = KnittingBLL.ApproveKnit(knit);
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
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Revise(Knitting knit)
        {
            Boolean Result = false;
            try
            {
                if (knit.Id > 0)
                {
                    int Id = KnittingBLL.ReviseKnit(knit);
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
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
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
                    Result = KnittingBLL.DeleteKnit(Id);
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
