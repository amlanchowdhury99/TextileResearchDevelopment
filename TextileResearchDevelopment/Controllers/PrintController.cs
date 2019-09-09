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
    public class PrintController : Controller
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
                data = PrintBLL.FabricSearch(fabricSearchObj);
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
            List<Print> objList = new List<Print>();

            try
            {
                objList = PrintBLL.GetList();
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
                mcList = PrintBLL.GetMachineList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<MachineType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = mcList }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetPrintFactoryTypeList()
        {
            JsonResult result = new JsonResult();
            List<PrintFactoryType> ptrList = new List<PrintFactoryType>();

            try
            {
                ptrList = PrintBLL.GetPrintFactoryTypeList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<ProductionType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = ptrList }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetPrintTypeList()
        {
            JsonResult result = new JsonResult();
            List<PrintType> ptList = new List<PrintType>();

            try
            {
                ptList = PrintBLL.GetPrintTypeList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<ProductionType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = ptList }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CRUD(Print print)
        {
            try
            {
                print = PrintBLL.CRUD(print);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = print }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = PrintBLL.Delete(Id);
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
        public ActionResult Revise(Print print)
        {
            try
            {
                print = PrintBLL.Revise(print);
                if (print.Id > 0)
                {
                    return Json(new { data = print }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Approve(Print print)
        {
            try
            {
                print = PrintBLL.Approve(print);

                if (print.Id > 0)
                {
                    return Json(new { data = print }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Unapprove(Print print)
        {
            try
            {
                print = PrintBLL.Unapprove(print);

                if (print.Id > 0)
                {
                    return Json(new { data = print }, JsonRequestBehavior.AllowGet);
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