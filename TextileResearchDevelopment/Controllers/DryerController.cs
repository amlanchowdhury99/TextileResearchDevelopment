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
    public class DryerController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult FabricSearch(Fabric fabricSearchObj)
        {

            List<Fabric> data = new List<Fabric>();
            try
            {
                data = DryerBLL.FabricSearch(fabricSearchObj);
            }
            catch (Exception ex)
            {
                data = new List<Fabric>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetData()
        {
            JsonResult result = new JsonResult();
            List<Dryer> objList = new List<Dryer>();

            try
            {
                objList = DryerBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = objList }, JsonRequestBehavior.AllowGet);

        }

        [HttpGet]
        public JsonResult GetMachineList()
        {
            JsonResult result = new JsonResult();
            List<MachineType> mcList = new List<MachineType>();

            try
            {
                mcList = DryerBLL.GetMachineList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<MachineType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = mcList }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CRUD(Dryer dryer)
        {
            try
            {
                dryer = DryerBLL.CRUD(dryer);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = dryer }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = DryerBLL.Delete(Id);
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

        [HttpPost]
        public ActionResult Revise(Dryer dryer)
        {
            try
            {
                dryer = DryerBLL.Revise(dryer);
                if (dryer.Id > 0)
                {
                    return Json(new { data = dryer }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Approve(Dryer dryer)
        {
            try
            {
                dryer = DryerBLL.Approve(dryer);

                if (dryer.Id > 0)
                {
                    return Json(new { data = dryer }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Unapprove(Dryer dryer)
        {
            try
            {
                dryer = DryerBLL.Unapprove(dryer);

                if (dryer.Id > 0)
                {
                    return Json(new { data = dryer }, JsonRequestBehavior.AllowGet);
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