﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class AopPrintController : Controller
    {
        // GET: AopPrint
        public ActionResult Index()
        {
            return View();
        }

        // GET: AopPrint/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: AopPrint/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: AopPrint/Create
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

        // GET: AopPrint/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: AopPrint/Edit/5
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

        // GET: AopPrint/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: AopPrint/Delete/5
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
