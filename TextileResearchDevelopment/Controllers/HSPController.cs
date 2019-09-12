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
    public class HSPController : Controller
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
                data = HSPBLL.FabricSearch(fabricSearchObj);
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
            List<HSP> objList = new List<HSP>();

            try
            {
                objList = HSPBLL.GetList();
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
                mcList = HSPBLL.GetMachineList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<MachineType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = mcList }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CRUD(HSP hsp)
        {
            try
            {
                hsp = HSPBLL.CRUD(hsp);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = hsp }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = HSPBLL.Delete(Id);
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
        public ActionResult Revise(HSP hsp)
        {
            try
            {
                hsp = HSPBLL.Revise(hsp);
                if (hsp.Id > 0)
                {
                    return Json(new { data = hsp }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Approve(HSP hsp)
        {
            try
            {
                hsp = HSPBLL.Approve(hsp);

                if (hsp.Id > 0)
                {
                    return Json(new { data = hsp }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Unapprove(HSP hsp)
        {
            try
            {
                hsp = HSPBLL.Unapprove(hsp);

                if (hsp.Id > 0)
                {
                    return Json(new { data = hsp }, JsonRequestBehavior.AllowGet);
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
