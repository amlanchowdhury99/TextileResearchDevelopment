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
    public class QCController : Controller
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
                data = QCBLL.FabricSearch(fabricSearchObj);
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
            List<QC> objList = new List<QC>();

            try
            {
                objList = QCBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = objList }, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public ActionResult CRUD(QC qc)
        {
            try
            {
                qc = QCBLL.CRUD(qc);
            }
            catch
            {
                return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = qc }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = QCBLL.Delete(Id);
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
        public ActionResult Revise(QC qc)
        {
            try
            {
                qc = QCBLL.Revise(qc);
                if (qc.Id > 0)
                {
                    return Json(new { data = qc }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Approve(QC qc)
        {
            try
            {
                qc = QCBLL.Approve(qc);

                if (qc.Id > 0)
                {
                    return Json(new { data = qc }, JsonRequestBehavior.AllowGet);
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
        public ActionResult Unapprove(QC qc)
        {
            try
            {
                qc = QCBLL.Unapprove(qc);

                if (qc.Id > 0)
                {
                    return Json(new { data = qc }, JsonRequestBehavior.AllowGet);
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