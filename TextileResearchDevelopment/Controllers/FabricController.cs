using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;

namespace TextileResearchDevelopment.Controllers
{
    public class FabricController : Controller
    {
        // GET: Fabric
        public ActionResult Index()
        {
            return View();
        }

        // GET: Fabric/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        //GET: Fabric/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Fabric/Create
        [HttpPost]
        public ActionResult Create(Fabric fabric)
        {
            try
            {
                // TODO: Add insert logic here

                if (ModelState.IsValid)
                {
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("ID: " + fabric.Id + "<br />");
                    return Content(sb.ToString());
                }
                else
                {
                    return View("Index");
                }
            }
            catch
            {
                return View();
            }
        }

        // GET: Fabric/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Fabric/Edit/5
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

        // GET: Fabric/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Fabric/Delete/5
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
