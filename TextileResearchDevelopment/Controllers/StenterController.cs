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
        // GET: Stenter
        public ActionResult Index()
        {
            return View();
        }

        // GET: Stenter/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Stenter/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Stenter/Create
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

        // GET: Stenter/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Stenter/Edit/5
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

        // GET: Stenter/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Stenter/Delete/5
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
