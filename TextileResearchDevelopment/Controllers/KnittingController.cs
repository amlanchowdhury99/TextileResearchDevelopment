using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.DataAccessLayer;
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
        public JsonResult GetMatchingData(string query, string Col)
        {
            List<string> matchingList = new List<string>();
            try
            {
                matchingList = KnittingBLL.GetMatchingData(query, Col);
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }
            return Json(matchingList, JsonRequestBehavior.AllowGet);
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

        [HttpPost]
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
        public ActionResult AddYarnCount(YarnCountType yarn)
        {
            Boolean Result = false;
            try
            {
                int Id = KnittingBLL.AddYarnCount(yarn);
                if (Id > 0)
                {
                    yarn.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
                }

                if (Result)
                {
                    return Json(new { data = yarn }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeleteYarnCount(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteYarnCount(Id);
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
        public ActionResult AddMCDIA(McDiaGaugeType dia)
        {
            Boolean Result = false;
            try
            {
                int Id = KnittingBLL.AddMCDIA(dia);
                if (Id > 0)
                {
                    dia.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
                }

                if (Result)
                {
                    return Json(new { data = dia }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeleteMCDIA(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteMCDIA(Id);
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
        public ActionResult AddKnitUnit(KnitUnitType knitType)
        {
            Boolean Result = false;
            try
            {
                int Id = KnittingBLL.AddKnitUnit(knitType);
                if (Id > 0)
                {
                    knitType.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
                }

                if (Result)
                {
                    return Json(new { data = knitType }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeleteKnitUnit(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteKnitUnit(Id);
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
        public ActionResult AddBrand(McBrandType brand)
        {
            Boolean Result = false;
            try
            {
                int Id = KnittingBLL.AddBrand(brand);
                if (Id > 0)
                {
                    brand.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
                }
                if (Result)
                {
                    return Json(new { data = brand }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeleteBrand(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteBrand(Id);
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

        [HttpPost]
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

        [HttpPost]
        public ActionResult BarCodeAuthorization(int BarCode)
        {
            Boolean Result = false;
            try
            {
                if (BarCode > 0)
                {
                    Result = KnittingBLL.BarCodeAuthorization(BarCode);
                }
                if(BarCode == 0)
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
        public ActionResult Unapprove(Knitting knit)
        {
            Boolean Result = false;
            try
            {
                if (knit.Id > 0)
                {
                    int Id = KnittingBLL.UnapproveKnit(knit);
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
        public ActionResult CheckUnapproveEligibility(Knitting knit)
        {
            Boolean Result = false;
            try
            {
                if (!DBGateway.recordExist("SELECT Id FROM Dyeing WHERE KnitID = "+ knit.Id))
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
