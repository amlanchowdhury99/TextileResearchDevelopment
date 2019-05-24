using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;
using System.Web.SessionState;

namespace TextileResearchDevelopment.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            if (Session[System.Web.HttpContext.Current.Session.SessionID] != null)
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
            if (Session[System.Web.HttpContext.Current.Session.SessionID] == null)
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
            if (UserBLL.IsUserValid(user))
            {
                //Session[user.UserName] = user.Password;
                Session[System.Web.HttpContext.Current.Session.SessionID] = user.UserName;
                return Json("Authenticated", JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult LogOut()
        {
            string userName = Session[System.Web.HttpContext.Current.Session.SessionID].ToString();
            if (UserBLL.LogOut(userName))
            {
                Session[System.Web.HttpContext.Current.Session.SessionID] = null;
                Session.Clear();
                Session.RemoveAll();
                Session.Abandon();
                Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

                return Json("Success", JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }
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