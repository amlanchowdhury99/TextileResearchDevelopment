using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Data;
using System.Data.SqlClient;

namespace TextileResearchDevelopment.Controllers
{
    public class CWController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetMachineList()
        {
            JsonResult result = new JsonResult();
            List<MachineType> mcList = new List<MachineType>();

            try
            {
                mcList = WashingBLL.GetMachineList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<MachineType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = mcList }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CRUD(CW cw)
        {
            try
            {
                cw = WashingBLL.CRUD(cw);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = cw }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = WashingBLL.DeleteCW(Id);
                }

                if (Result)
                {
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }

            return Json("Failed", JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetData()
        {
            JsonResult result = new JsonResult();
            List<CW> objList = new List<CW>();

            try
            {
                objList = WashingBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = objList }, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public ActionResult Revise(CW cw)
        {
            try
            {
                cw = WashingBLL.ReviseCW(cw);
                if (cw.Id > 0)
                {
                    return Json(new { data = cw }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult Approve(CW cw)
        {
            try
            {
                cw = WashingBLL.ApproveCW(cw);

                if (cw.Id > 0)
                {
                    return Json(new { data = cw }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

        }

        [HttpPost]
        public ActionResult Unapprove(CW cw)
        {
            try
            {
                cw = WashingBLL.UnapproveCW(cw);

                if (cw.Id > 0)
                {
                    return Json(new { data = cw }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}