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

        public ActionResult Details(int id)
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
                buyers = FabricBLL.GetBuyerList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(buyers, JsonRequestBehavior.AllowGet);
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
                // Info
                Console.Write(ex);
            }

            return Json(fabricTypes, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create(Fabric fabric)
        {
            Boolean Result = false;
            try
            {
                fabric.BarCode = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + FabricBLL.GetSerial((DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day).ToString());
                if(fabric.Id == 0)
                {
                    int Id = FabricBLL.AddFabric(fabric);
                    if (Id > 0)
                    {
                        fabric.Id = Id;
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }
                    
                if (Result)
                {
                    return Json(new { data = fabric }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Edit(int id)
        {
            return View();
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

    }
}
