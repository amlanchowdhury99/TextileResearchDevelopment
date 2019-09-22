using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Data;
using System.Data.SqlClient;

namespace TextileResearchDevelopment.Controllers
{
    public class FabricController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetBuyerList()
        {
            JsonResult result = new JsonResult();
            List<Buyer> buyers = new List<Buyer>();

            try
            {
                buyers = FabricBLL.GetBuyerTypeList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<Buyer>()}, JsonRequestBehavior.AllowGet);
            }

            return Json( new { data = buyers }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetFabricTypeList()
        {
            JsonResult result = new JsonResult();
            List<FabricType> fabricTypes = new List<FabricType>();

            try
            {
                fabricTypes = FabricBLL.GetFabricTypeList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<FabricType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = fabricTypes }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetCompositionTypeList()
        {
            JsonResult result = new JsonResult();
            List<CompositionType> cms = new List<CompositionType>();

            try
            {
                cms = FabricBLL.GetCompositionTypeList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<CompositionType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = cms }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddBuyerType(Buyer buyer)
        {
            try
            {
                buyer = FabricBLL.AddBuyerType(buyer);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = buyer }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddFabricType(FabricType fb)
        {
            try
            {
                fb = FabricBLL.AddFabricType(fb);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = fb }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddCompositionType(CompositionType cm)
        {
            try
            {
                cm = FabricBLL.AddCompositionType(cm);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = cm }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CRUD(Fabric fabric)
        {
            try
            {
                if(fabric.Id == 0)
                {
                    fabric.BarCode = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + FabricBLL.GetSerial((DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString()).ToString());
                    
                }
                fabric = FabricBLL.CRUD(fabric);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = fabric }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult IsFabricDuplicate(Fabric fabric)
        {
            Boolean Result = true;

            try
            {
                Result = FabricBLL.IsFabricDuplicate(fabric);
            }
            catch
            {
                return Json(Result, JsonRequestBehavior.AllowGet);
            }

            return Json(false, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id, string BarCode)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = FabricBLL.DeleteFabric(Id, BarCode);
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
        public ActionResult DeleteBuyerType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = FabricBLL.DeleteBuyer(Id);
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
        public ActionResult DeleteFabricType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = FabricBLL.DeleteFabricType(Id);
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
        public ActionResult DeleteCompositionType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = FabricBLL.DeleteCompositionType(Id);
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

        [HttpGet]
        public JsonResult GetData()
        {
            JsonResult result = new JsonResult();
            List<Fabric> data = new List<Fabric>();

            try
            {
                // Initialization.
                //string search = Request.Form.GetValues("search[value]")[0];
                //string draw = Request.Form.GetValues("draw")[0];
                //string order = Request.Form.GetValues("order[0][column]")[0];
                //string orderDir = Request.Form.GetValues("order[0][dir]")[0];
                //int startRec = Convert.ToInt32(Request.Form.GetValues("start")[0]);
                //int pageSize = Convert.ToInt32(Request.Form.GetValues("length")[0]);

                // Loading.
                data = FabricBLL.GetList();

                // Total record count.
                //int totalRecords = data.Count;

                // Verification.
                //if (!string.IsNullOrEmpty(search) &&
                //    !string.IsNullOrWhiteSpace(search))
                //{
                //    // Apply search
                //    data = data.Where(p => p.Sr.ToString().ToLower().Contains(search.ToLower()) ||
                //                           p.OrderTrackNumber.ToLower().Contains(search.ToLower()) ||
                //                           p.Quantity.ToString().ToLower().Contains(search.ToLower()) ||
                //                           p.ProductName.ToLower().Contains(search.ToLower()) ||
                //                           p.SpecialOffer.ToLower().Contains(search.ToLower()) ||
                //                           p.UnitPrice.ToString().ToLower().Contains(search.ToLower()) ||
                //                           p.UnitPriceDiscount.ToString().ToLower().Contains(search.ToLower())).ToList();
                //}

                // Sorting.
                //data = this.SortByColumnWithOrder(order, orderDir, data);

                //// Filter record count.
                //int recFilter = data.Count;

                //// Apply pagination.
                //data = data.Skip(startRec).Take(pageSize).ToList();

                // Loading drop down lists.

                //result = this.Json(new { draw = Convert.ToInt32(draw), recordsTotal = totalRecords, recordsFiltered = recFilter, data = data }, JsonRequestBehavior.AllowGet);
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
                matchingList = FabricBLL.GetMatchingData(query, Col);
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }
            return Json( matchingList, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult FabricSearch(Fabric fabricSearchObj)
        {

            List<Fabric> data = new List<Fabric>();
            try
            {
                data = FabricBLL.FabricSearch(fabricSearchObj);
            }
            catch (Exception ex)
            {
                data = new List<Fabric>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult ResetFabric(Fabric fabric)
        {
            try
            {
                fabric = FabricBLL.ResetFabric(fabric);

                if (fabric.Id > 0)
                {
                    return Json(new { data = "Success" }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "Failed" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "Failed" }, JsonRequestBehavior.AllowGet);
            }
        }

    }
}
