using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            if(Session["UserName"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("LoginForm", "Home");
            }
        }

        [HttpGet]
        public ActionResult LoginForm()
        {
            if (Session["UserName"] == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
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

            Session["UserName"] = "b";

            return Json(new { success = true, redirecturl = @Url.Action("Index") });
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

    }
}