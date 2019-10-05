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
    public class DyeingController : Controller
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
                data = DyeingBLL.FabricSearch(fabricSearchObj);
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
            List<Dyeing> objList = new List<Dyeing>();

            try
            {
                objList = DyeingBLL.GetList();
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
                mcList = DyeingBLL.GetMachineList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<MachineType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = mcList }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetRFTList()
        {
            JsonResult result = new JsonResult();
            List<RFTType> rftList = new List<RFTType>();

            try
            {
                rftList = DyeingBLL.GetRFTList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<RFTType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = rftList }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetHistoryList()
        {
            JsonResult result = new JsonResult();
            List<HistoryType> hsList = new List<HistoryType>();

            try
            {
                hsList = DyeingBLL.GetHistoryList();
            }
            catch (Exception ex)
            {
                return Json(new { data = new List<HistoryType>() }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = hsList }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CRUD(Dyeing dyeing)
        {
            try
            {
                dyeing = DyeingBLL.CRUD(dyeing);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = dyeing }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = DyeingBLL.Delete(Id);
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
        public ActionResult Revise(Dyeing dyeing)
        {
            try
            {
                dyeing = DyeingBLL.Revise(dyeing);
                if (dyeing.Id > 0)
                {
                    return Json(new { data = dyeing }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Approve(Dyeing dyeing)
        {
            try
            {
                dyeing = DyeingBLL.Approve(dyeing);

                if (dyeing.Id > 0)
                {
                    return Json(new { data = dyeing }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Unapprove(Dyeing dyeing)
        {
            try
            {
                dyeing = DyeingBLL.Unapprove(dyeing);

                if (dyeing.Id > 0)
                {
                    return Json(new { data = dyeing }, JsonRequestBehavior.AllowGet);
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
