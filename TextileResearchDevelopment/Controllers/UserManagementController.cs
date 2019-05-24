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
        public ActionResult Details(int id)
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(User user)
        {
            Boolean Result = false;
            try
            {
                if (user.Id == 0)
                {
                    int Id = UserBLL.AddUser(user);
                    if (Id > 0)
                    {
                        user.Id = Id;
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = user }, JsonRequestBehavior.AllowGet);
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
            JsonResult result = new JsonResult();
            List<User> data = new List<User>();

            try
            {
                data = UserBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = data }, JsonRequestBehavior.AllowGet);

        }

    }
}
