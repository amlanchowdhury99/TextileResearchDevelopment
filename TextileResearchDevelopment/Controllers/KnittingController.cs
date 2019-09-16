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
        public JsonResult GetYarnColorList()
        {
            JsonResult result = new JsonResult();
            List<YarnColorType> yct = new List<YarnColorType>();

            try
            {
                yct = KnittingBLL.GetYarnColorList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = yct }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetYarnTypeList()
        {
            JsonResult result = new JsonResult();
            List<YarnType> ytList = new List<YarnType>();

            try
            {
                ytList = KnittingBLL.GetYarnTypeList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = ytList }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetCompositionTypeList()
        {
            JsonResult result = new JsonResult();
            List<CompositionType> cmList = new List<CompositionType>();

            try
            {
                cmList = KnittingBLL.GetCompositionTypeList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = cmList }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetYarnCompositionTypeList()
        {
            JsonResult result = new JsonResult();
            List<CompositionType> cmList = new List<CompositionType>();

            try
            {
                cmList = KnittingBLL.GetYarnCompositionTypeList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = cmList }, JsonRequestBehavior.AllowGet);
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
            try
            {
                knit = KnittingBLL.AddKnit(knit);

                if (knit.Id > 0)
                {
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult AddYarnCount(YarnCountType yarn)
        {
            try
            {
                yarn = KnittingBLL.AddYarnCount(yarn);
                if (yarn.Id > 0)
                {
                    return Json(new { data = yarn }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult AddMcNo(McDiaGaugeType mc)
        {
            try
            {
                mc = KnittingBLL.AddMcNo(mc);
                if(mc.Id > 0)
                {
                    return Json(new { data = mc }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
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
        public ActionResult AddYarnColorType(YarnColorType yarn)
        {
            try
            {
                yarn = KnittingBLL.AddYarnColor(yarn);
                if (yarn.Id > 0)
                {
                    return Json(new { data = yarn }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult AddYarnComposition(CompositionType yarn)
        {
            try
            {
                yarn = KnittingBLL.AddYarnComposition(yarn);
                if (yarn.Id > 0)
                {
                    return Json(new { data = yarn }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult AddComposition(CompositionType yarn)
        {
            try
            {
                yarn = KnittingBLL.AddComposition(yarn);
                if (yarn.Id > 0)
                {
                    return Json(new { data = yarn }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult AddYarnType(YarnType yarn)
        {
            try
            {
                yarn = KnittingBLL.AddYarnType(yarn);
                if (yarn.Id > 0)
                {
                    return Json(new { data = yarn }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult CRUDYD(YD yd)
        {
            try
            {
                yd = KnittingBLL.AddYD(yd);
                if (yd.Id > 0)
                {
                    return Json(new { data = yd }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult CRUDYDR(YDR ydr)
        {
            try
            {
                ydr = KnittingBLL.AddYDR(ydr);
                if (ydr.Id > 0)
                {
                    return Json(new { data = ydr }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult DeleteMcNo(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteMcNo(Id);
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
        public ActionResult DeleteYarnType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteYarnType(Id);
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
        public ActionResult DeleteYarnColorType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteYarnColor(Id);
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
        public ActionResult DeleteYarnComposition(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteYarnComposition(Id);
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
        public ActionResult DeleteComposition(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteComposition(Id);
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
        public ActionResult DeleteYD(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteYD(Id);
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
        public ActionResult DeleteYDR(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = KnittingBLL.DeleteYDR(Id);
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
            try
            {
                knit = KnittingBLL.EditKnit(knit);

                if (knit.Id > 0)
                {
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult Approve(Knitting knit)
        {
            try
            {
                knit = KnittingBLL.ApproveKnit(knit);

                if (knit.Id > 0)
                {
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

        }

        [HttpPost]
        public ActionResult Revise(Knitting knit)
        {
            try
            {
                knit = KnittingBLL.ReviseKnit(knit);
                if (knit.Id > 0)
                {
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
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
            try
            {
                knit = KnittingBLL.UnapproveKnit(knit);

                if (knit.Id > 0)
                {
                    return Json(new { data = knit }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
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
