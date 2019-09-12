using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class UserManagementController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Details(User user)
        {
            try
            {
                user = UserBLL.GetDetails(user);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = user }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create(User user)
        {
            try
            {
                user = UserBLL.AddUser(user);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = user }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Update(User user)
        {
            try
            {
                user = UserBLL.EditUser(user);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = user }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            JsonResult result = new JsonResult();

            try
            {
                if (UserBLL.DeleteUser(Id))
                {
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json("Failed", JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetData()
        {

            try
            {
                List<User> objList = UserBLL.GetList();
                return Json(new { data = objList }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<User>() }, JsonRequestBehavior.AllowGet);
            }

        }

        [HttpPost]
        public JsonResult HasRight(string text)
        {
            Boolean Result = false;
            List<User> data = new List<User>();

            try
            {
                Result = UserBLL.HasRight(text);

                if (Result)
                {
                    return Json("true", JsonRequestBehavior.AllowGet);
                }

            }
            catch (Exception ex)
            {
                return Json("false", JsonRequestBehavior.AllowGet);
            }

            return Json("false", JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public JsonResult GetRoles(User user)
        {
            try
            {
                Role role = new Role();
                user.UserName = Session[System.Web.HttpContext.Current.Session.SessionID].ToString();
                role = UserBLL.GetRoles(user);

                return Json(role, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                return Json(new Role(), JsonRequestBehavior.AllowGet);
            }
        }
    }
}
