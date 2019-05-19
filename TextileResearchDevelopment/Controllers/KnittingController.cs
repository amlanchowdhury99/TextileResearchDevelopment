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
        // GET: Knitting
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

        // GET: Knitting/FabricSearch/
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

        // GET: Knitting/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Knitting/Create
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

        // GET: Knitting/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Knitting/Edit/5
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

        // GET: Knitting/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Knitting/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
