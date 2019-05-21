using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;


namespace TextileResearchDevelopment.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }

        

        // GET: Account/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // POST: Account/Create
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

        // POST: Account/Edit/5
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

        // POST: Account/Delete/5
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

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public JsonResult CheckAuthentication(User user)
        {
            // Your code to check the Authentication
            //int count = 1;
            //if (count == 1)
            //{
            //    return Json("Authenticated", JsonRequestBehavior.AllowGet);
            //}
            //else
            //{
            //    return Json("Failed", JsonRequestBehavior.AllowGet);
            //}
            return Json(new { success = true, redirecturl = "/Home/Index" });
        }


        //[HttpPost]
        //[AllowAnonymous]
        //[ValidateAntiForgeryToken]
        //public Task<ActionResult>
        //Login(LoginViewModel model, string returnUrl)
        //{

        //    return View(model);
        //    // Remove all this stuff as we could achieve the same in AJAX request
        //}

    }
}
