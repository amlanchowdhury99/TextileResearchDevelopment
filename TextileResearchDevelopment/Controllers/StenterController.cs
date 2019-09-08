using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TextileResearchDevelopment.DataAccessLayer;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class StenterController : Controller
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
                data = StenterBLL.FabricSearch(fabricSearchObj);
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
            List<Stenter> objList = new List<Stenter>();

            try
            {
                objList = StenterBLL.GetList();
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
                mcList = StenterBLL.GetMachineList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<MachineType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = mcList }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetProductionTypeList()
        {
            JsonResult result = new JsonResult();
            List<ProductionType> pdrList = new List<ProductionType>();

            try
            {
                pdrList = StenterBLL.GetProductionTypeList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<ProductionType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = pdrList }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CRUD(Stenter stenter)
        {
            try
            {
                stenter = StenterBLL.CRUD(stenter);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = StenterBLL.Delete(Id);
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
        public ActionResult Revise(Stenter stenter)
        {
            try
            {
                stenter = StenterBLL.Revise(stenter);
                if (stenter.Id > 0)
                {
                    return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Approve(Stenter stenter)
        {
            try
            {
                stenter = StenterBLL.Approve(stenter);

                if (stenter.Id > 0)
                {
                    return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Unapprove(Stenter stenter)
        {
            try
            {
                stenter = StenterBLL.Unapprove(stenter);

                if (stenter.Id > 0)
                {
                    return Json(new { data = stenter }, JsonRequestBehavior.AllowGet);
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
