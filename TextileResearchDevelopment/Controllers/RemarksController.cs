using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class RemarksController : Controller
    {
        // GET: Remarks
        public ActionResult Index()
        {
            return View();
        }

        // GET: Remarks/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Remarks/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Remarks/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Remarks/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Remarks/Edit/5
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

        // GET: Remarks/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Remarks/Delete/5
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
